import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:producao_chopp/features/produto/presentation/screens/adicionarproduto/adicionar_produto_notifier.dart';

class AdicionarProdutoScreen extends ConsumerStatefulWidget {
  const AdicionarProdutoScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AdicionarProdutoScreenState();
}

class _AdicionarProdutoScreenState extends ConsumerState<AdicionarProdutoScreen> {
  final _nomeController = TextEditingController();
  final _prazoValidadeController = TextEditingController();

  @override
  void dispose() {
    _nomeController.dispose();
    _prazoValidadeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(adicionarProdutoProvider, (previous, next) {
      if (next.isSuccess) {
        ref.read(adicionarProdutoProvider.notifier).limpar();

        if (context.canPop()) {
          context.pop();
        }
      }
    });

    final state = ref.watch(adicionarProdutoProvider);
    final notifier = ref.read(adicionarProdutoProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Adicionar Produto', style: TextStyle(fontWeight: FontWeight.bold)),
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
                controller: _nomeController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Nome',
                  hintText: 'Ex: Itaipava',
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onChanged: notifier.onNomeChanged,
              ),

              if (state.erroNome != null)
                Text(state.erroNome!, style: const TextStyle(color: Colors.red, fontSize: 12)),

              const SizedBox(height: 8),

              TextField(
                controller: _prazoValidadeController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Dias de validade',
                  hintText: 'Ex: 30',
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onChanged: notifier.onPrazoValidadeChanged,
              ),

              if (state.erroPrazoValidade != null)
                Text(
                  state.erroPrazoValidade!,
                  style: const TextStyle(color: Colors.red, fontSize: 12),
                ),

              const SizedBox(height: 8),

              if (state.erroGeral != null)
                Text(state.erroGeral!, style: const TextStyle(color: Colors.red, fontSize: 12)),

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
