import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:producao_chopp/features/produto/presentation/screens/editarproduto/editar_produto_notifier.dart';

class EditarProdutoScreen extends ConsumerStatefulWidget {
  final String produtoId;

  const EditarProdutoScreen({super.key, required this.produtoId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EditarProdutoScreenState();
}

class _EditarProdutoScreenState extends ConsumerState<EditarProdutoScreen> {
  final _nomeController = TextEditingController();
  final _prazoValidadeController = TextEditingController();

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      ref.read(editarProdutoProvider.notifier).buscarProduto(widget.produtoId);
    });
  }

  @override
  void dispose() {
    _nomeController.dispose();
    _prazoValidadeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(editarProdutoProvider, (previous, next) {
      if (previous?.id != next.id && next.id.isNotEmpty) {
        _nomeController.text = next.nome;
        _prazoValidadeController.text = next.prazoValidade;
      }

      if (next.isSuccess) {
        ref.read(editarProdutoProvider.notifier).limpar();
        context.pop();
      }
    });

    final state = ref.watch(editarProdutoProvider);
    final notifier = ref.read(editarProdutoProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Editar Produto', style: TextStyle(fontWeight: FontWeight.bold)),
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
                onPressed: state.isLoading ? null : notifier.editar,
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
