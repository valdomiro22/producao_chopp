import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:producao_chopp/common/components/mensagem_erro_component.dart';
import 'package:producao_chopp/features/barril/presentation/components/barril_dropdown_component.dart';
import 'package:producao_chopp/features/producao/presentation/screens/adicionarproducao/adicionar_producao_notifier.dart';
import 'package:producao_chopp/features/produto/presentation/components/produto_dropdown_component.dart';

import '../../../../../common/components/date_pecker_field_component.dart';
import '../../../../../routes/app_routes_names.dart';
import '../../../../barril/presentation/screens/listabarris/lista_barris_notifier.dart';
import '../../../../produto/domain/entities/produto_entity.dart';
import '../../../../produto/presentation/screens/listaprodutos/lista_produtos_notifier.dart';

class AdicionarProducaoScreen extends ConsumerStatefulWidget {
  final String gradeId;

  const AdicionarProducaoScreen({super.key, required this.gradeId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AdicionarProducaoScreenState();
}

class _AdicionarProducaoScreenState extends ConsumerState<AdicionarProducaoScreen> {
  final _qtProgramadaController = TextEditingController();
  final _qtProduzidaController = TextEditingController();

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      ref.read(adicionarProducaoProvider.notifier).onGradeIdChanged(widget.gradeId);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _qtProduzidaController.dispose();
    _qtProgramadaController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final producaoState = ref.watch(adicionarProducaoProvider);
    final producaoNotifier = ref.watch(adicionarProducaoProvider.notifier);
    final barrisState = ref.watch(listaBarrisProvider);
    final produtosState = ref.watch(listaProdutosProvider);

    ProdutoEntity? produtoSelecionado;

    ref.listen(adicionarProducaoProvider, (previous, next) {
      if (next.isSuccess) {
        ref.read(adicionarProducaoProvider.notifier).limpar();
        context.pop();
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Produção', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Seleção de produto
              produtosState.when(
                loading: () {
                  return const Center(child: CircularProgressIndicator());
                },
                error: (error, stackTrace) {
                  return Text(error.toString().replaceFirst('Exception: ', ''));
                },
                data: (produtos) {
                  return produtos.isEmpty
                      ? ElevatedButton(
                          onPressed: () => context.push(AppRoutesNames.listaProdutos),
                          child: Text('Adicione um produto'),
                        )
                      : ProdutoDropdownComponent(
                          produtos: produtos,
                          produtoIdSelecionado: producaoState.produtoId,
                          onChanged: producaoNotifier.onProdutoChanged,
                        );
                },
              ),
              if (producaoState.erroProdutoId != null)
                MensagemErroComponent(mensagem: producaoState.erroProdutoId!),
              SizedBox(height: 16),

              // Seleção de barril
              barrisState.when(
                loading: () {
                  return const Center(child: CircularProgressIndicator());
                },
                error: (error, stackTrace) {
                  return Text(error.toString().replaceFirst('Exception: ', ''));
                },
                data: (barris) {
                  return barris.isEmpty
                      ? ElevatedButton(
                          onPressed: () => context.push(AppRoutesNames.listaBarris),
                          child: Text('Adicione um produto'),
                        )
                      : BarrilDropdownComponent(
                          barris: barris,
                          barrilIdSelecionado: producaoState.barrilId,
                          onChanged: (barrilId) {
                            if (barrilId == null) return;

                            final barrilSelecionado = barris
                                .where((barril) => barril.id == barrilId)
                                .firstOrNull;

                            if (barrilSelecionado == null) return;

                            producaoNotifier.onBarrilChanged(barrilSelecionado.id);
                            producaoNotifier.onVolumeBarrilChanged(
                              barrilSelecionado.volume.toString(),
                            );
                          },
                        );
                },
              ),
              if (producaoState.erroBarrilId != null)
                MensagemErroComponent(mensagem: producaoState.erroBarrilId!),
              SizedBox(height: 16),

              TextField(
                controller: _qtProgramadaController,
                keyboardType: TextInputType.number,
                onChanged: producaoNotifier.onQuantidadeProgramadaChanged,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  labelText: 'Quantidade Programada',
                  hintText: 'Ex: 450',
                  errorText: producaoState.erroQtProgramada,
                ),
              ),
              if (producaoState.erroQtProgramada != null)
                MensagemErroComponent(mensagem: producaoState.erroQtProduzida!),
              SizedBox(height: 16),

              DatePeckerFieldComponent(
                dataSelecionada: producaoState.data,
                erroData: producaoState.erroData,
                onDataChanged: producaoNotifier.onDataChanged,
              ),
              if (producaoState.erroGeral != null)
                MensagemErroComponent(mensagem: producaoState.erroGeral),
              SizedBox(height: 16),

              ElevatedButton(
                onPressed: () => producaoNotifier.adicionarProducao(),
                style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(vertical: 10)),
                child: Text('Salvar', style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
