import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../anotacoes/presentation/screens/adicionaranotacao/adicionar_anotacao_notifier.dart';
import '../../producao/domain/entities/producao_entity.dart';

class AddQtHorariaDialog extends ConsumerStatefulWidget {
  final String horario;
  final ProducaoEntity producao;

  const AddQtHorariaDialog({super.key, required this.horario, required this.producao});

  @override
  ConsumerState<AddQtHorariaDialog> createState() => _AddQtHorariaDialogState();
}

class _AddQtHorariaDialogState extends ConsumerState<AddQtHorariaDialog> {
  void _somarAoInput(int valor) {
    final notifier = ref.read(adicionarAnotacaoProvider.notifier);
    final state = ref.read(adicionarAnotacaoProvider);

    final qtAtual = int.tryParse(state.quantidade) ?? 0;
    final novaQuantidade = qtAtual + valor;

    // notifier.onQuantidadeChanged(novaQuantidade.toString());
    notifier.onQuantidadeChanged(novaQuantidade.toString());
  }

  Future<void> _salvarAnotacao(bool ehPositivo) async {
    final notifier = ref.read(adicionarAnotacaoProvider.notifier);
    final state = ref.read(adicionarAnotacaoProvider);

    final qtAtual = int.tryParse(state.quantidade) ?? 0;

    final quantidadeFinal = ehPositivo ? qtAtual.abs() : qtAtual.abs() * -1;

    notifier.onQuantidadeChanged(quantidadeFinal.toString());

    await notifier.adicionarAnotacao(widget.producao.id, widget.horario);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(adicionarAnotacaoProvider);
    final notifier = ref.read(adicionarAnotacaoProvider.notifier);

    ref.listen(adicionarAnotacaoProvider, (previous, next) {
      if (next.isSuccess) {
        Navigator.of(context).pop(true);
      }
    });

    final theme = Theme.of(context);

    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 24),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
      child: Card(
        margin: EdgeInsets.zero,
        elevation: 8,
        color: theme.colorScheme.surface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 18,
            children: [
              Text(
                'Horário: ${widget.horario}',
                style: theme.textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
              ),

              TextField(
                controller: TextEditingController(text: state.quantidade)
                  ..selection = TextSelection.collapsed(offset: state.quantidade.length),
                onChanged: notifier.onQuantidadeChanged,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                style: theme.textTheme.displaySmall?.copyWith(fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  hintText: '0',
                  errorText: state.erroQuantidade,
                  border: const OutlineInputBorder(),
                ),
              ),

              Row(
                children: [1, 5, 10, 20].map((valor) {
                  return Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: SizedBox(
                        height: 40,
                        child: OutlinedButton(
                          onPressed: () => _somarAoInput(valor),
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                          ),
                          child: Text('+$valor', maxLines: 1),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),

              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: state.isLoading ? null : () => _salvarAnotacao(false),
                      style: OutlinedButton.styleFrom(foregroundColor: theme.colorScheme.error),
                      child: const Text('Retirar', style: TextStyle(fontWeight: FontWeight.w600)),
                    ),
                  ),

                  const SizedBox(width: 12),

                  Expanded(
                    child: ElevatedButton(
                      onPressed: state.isLoading ? null : () => _salvarAnotacao(true),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: theme.colorScheme.primary,
                        foregroundColor: theme.colorScheme.onPrimary,
                      ),
                      child: state.isLoading
                          ? const SizedBox(
                              width: 18,
                              height: 18,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : const Text('Adicionar', style: TextStyle(fontWeight: FontWeight.w600)),
                    ),
                  ),
                ],
              ),

              if (state.erroGeral != null)
                Text(
                  state.erroGeral!,
                  style: TextStyle(color: theme.colorScheme.error, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),

              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: const Text('Cancelar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
