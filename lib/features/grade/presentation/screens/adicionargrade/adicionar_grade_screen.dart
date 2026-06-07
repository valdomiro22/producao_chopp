import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:producao_chopp/common/components/carregando_component.dart';
import 'package:producao_chopp/common/components/mensagem_erro_component.dart';

import '../../../../../core/helper/data_helper.dart';
import 'adicionar_grade_notifier.dart';

class AdicionarGradeScreen extends ConsumerStatefulWidget {
  const AdicionarGradeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AdicionarGradeScreenState();
}

class _AdicionarGradeScreenState extends ConsumerState<AdicionarGradeScreen> {
  final _numeroController = TextEditingController();
  DateTime? _dataSelecionada;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(adicionarGradeProvider);
    final notifier = ref.read(adicionarGradeProvider.notifier);

    ref.listen(adicionarGradeProvider, (previous, next) {
      if (next.isSuccess) {
        ref.read(adicionarGradeProvider.notifier).limpar();
        context.pop();
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Adicionar Grade', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 8),

              TextField(
                controller: _numeroController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Numero',
                  hintText: 'Ex: 3',
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onChanged: notifier.onNumeroChanged,
              ),

              if (state.erroNumero != null)
                Text(state.erroNumero!, style: const TextStyle(color: Colors.red, fontSize: 12)),

              const SizedBox(height: 16),

              TextField(
                readOnly: true,
                onTap: () async {
                  final DateTime? picker = await showDatePicker(
                    context: context,
                    initialDate: _dataSelecionada ?? DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );

                  if (picker != null && picker != _dataSelecionada) {
                    setState(() {
                      _dataSelecionada = picker;
                    });

                    notifier.onDataChanged(picker);
                  }
                },
                decoration: InputDecoration(
                  labelText: 'Data',
                  hintText: 'Selecione a data',
                  border: const OutlineInputBorder(),
                  suffixIcon: const Icon(Icons.calendar_month),
                  errorText: state.erroData,
                ),
                controller: TextEditingController(
                  text: _dataSelecionada == null
                      ? ''
                      : DataHelper.formatarData(_dataSelecionada!.toIso8601String()),
                ),
              ),
              if (state.erroData != null) MensagemErroComponent(mensagem: state.erroData),
              SizedBox(height: 20),

              ElevatedButton(
                onPressed: state.isLoading ? null : notifier.adicionarGrade,
                style: ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 10)),
                child: state.isLoading
                    ? const SizedBox(
                        height: 22,
                        width: 22,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Text('Salvar', style: TextStyle(fontSize: 18)),
              ),
              SizedBox(height: 20),
              if (state.isLoading) CarregandoComponent(),
            ],
          ),
        ),
      ),
    );
  }
}
