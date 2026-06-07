import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:producao_chopp/features/producao/presentation/components/item_lista_producao_component.dart';
import 'package:producao_chopp/features/producao/presentation/screens/listaproducoes/lista_producoes_notifier.dart';

import '../../../../../routes/app_routes_names.dart';
import '../../../../barril/presentation/screens/listabarris/lista_barris_notifier.dart';
import '../../../../produto/presentation/screens/listaprodutos/lista_produtos_notifier.dart';

class ListaProducoesScreen extends ConsumerWidget {
  final String gradeId;

  const ListaProducoesScreen({super.key, required this.gradeId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final producoesState = ref.watch(listaProducoesProvider);
    final barrisState = ref.watch(listaBarrisProvider);
    final produtosState = ref.watch(listaProdutosProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Produções', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: producoesState.when(
        loading: () {
          return const Center(child: CircularProgressIndicator());
        },
        error: (error, stackTrace) {
          return Center(child: Text(error.toString().replaceFirst('Exception: ', '')));
        },
        data: (producoes) {
          if (producoes.isEmpty) {
            return const Center(child: Text('Nenhuma produção cadastrada'));
          }

          return barrisState.when(
            loading: () {
              return const Center(child: CircularProgressIndicator());
            },
            error: (error, stackTrace) {
              return Center(child: Text(error.toString().replaceFirst('Exception: ', '')));
            },
            data: (barris) {
              return produtosState.when(
                loading: () {
                  return const Center(child: CircularProgressIndicator());
                },
                error: (error, stackTrace) {
                  return Center(child: Text(error.toString().replaceFirst('Exception: ', '')));
                },
                data: (produtos) {
                  return ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    itemCount: producoes.length,
                    itemBuilder: (context, index) {
                      final producao = producoes[index];

                      final barril = barris.firstWhere((barril) => barril.id == producao.barrilId);

                      final produto = produtos.firstWhere(
                        (produto) => produto.id == producao.produtoId,
                      );

                      return ItemListaProducaoComponent(
                        producao: producao,
                        barril: barril,
                        produto: produto,
                        onItemClick: () {
                          context.push('${AppRoutesNames.home}/${producao.id}');
                        },
                        onEditarClick: () {
                          context.push('${AppRoutesNames.editarProducao}/${producao.id}');
                        },
                        onDeletarClick: () async {
                          await ref.read(listaProducoesProvider.notifier).deletarProducao(producao);
                        },
                      );
                    },
                  );
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
          context.push('${AppRoutesNames.adicionarProducao}/$gradeId');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
