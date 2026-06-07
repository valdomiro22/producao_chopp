import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'adicionar_barril_notifier.dart';

class AdicionarBarrilScreen extends ConsumerStatefulWidget {
  const AdicionarBarrilScreen({super.key});

  @override
  ConsumerState<AdicionarBarrilScreen> createState() => _AdicionarBarrilScreenState();
}

class _AdicionarBarrilScreenState extends ConsumerState<AdicionarBarrilScreen> {
  final _nomeController = TextEditingController();
  final _volumeController = TextEditingController();

  @override
  void dispose() {
    _nomeController.dispose();
    _volumeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(adicionarBarrilProvider, (previous, next) {
      if (next.isSucess) {
        ref.read(adicionarBarrilProvider.notifier).limpar();

        if (context.canPop()) {
          context.pop();
        }
      }
    });

    final state = ref.watch(adicionarBarrilProvider);
    final notifier = ref.read(adicionarBarrilProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Adicionar Barril')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 8),

              TextField(
                controller: _nomeController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Nome',
                  hintText: 'Ex: Barril 30L',
                  errorText: state.erroNome,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                ),
                onChanged: notifier.onNomeChanged,
              ),

              const SizedBox(height: 8),

              TextField(
                controller: _volumeController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Volume',
                  hintText: 'Ex: 30',
                  errorText: state.erroVolume,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                ),
                onChanged: notifier.onVolumeChanged,
              ),

              const SizedBox(height: 8),

              SwitchListTile(
                value: state.isDescartavel,
                onChanged: notifier.onDescartavelChanged,
                title: Text(state.isDescartavel ? 'Descartável' : 'Retornável'),
              ),

              if (state.erroGeral != null) ...[
                const SizedBox(height: 8),
                Text(state.erroGeral!, style: const TextStyle(color: Colors.red, fontSize: 12)),
              ],

              const SizedBox(height: 16),

              ElevatedButton(
                onPressed: state.isLoading ? null : notifier.adicionar,
                style: ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 10)),
                child: state.isLoading
                    ? const SizedBox(
                        height: 22,
                        width: 22,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Text('Salvar', style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
