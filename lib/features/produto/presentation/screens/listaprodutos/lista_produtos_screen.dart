import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:producao_chopp/features/produto/presentation/components/item_lista_produto_component.dart';
import 'package:producao_chopp/features/produto/presentation/screens/listaprodutos/lista_produtos_notifier.dart';

import '../../../../../routes/app_routes_names.dart';

class ListaProdutosScreen extends ConsumerWidget {
  const ListaProdutosScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(listaProdutosProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Produtos', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: state.when(
        loading: () {
          return const Center(child: CircularProgressIndicator());
        },
        error: (error, stackTrace) {
          return Center(child: Text(error.toString().replaceFirst('Exception: ', '')));
        },
        data: (produtos) {
          if (produtos.isEmpty) {
            return const Center(child: Text('Nenhum produto cadastrado'));
          }

          return ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            itemCount: produtos.length,
            itemBuilder: (context, index) {
              final produto = produtos[index];

              return ItemListaProdutoComponent(
                produto: produto,
                onEditarClick: () {
                  context.push('${AppRoutesNames.editarProduto}/${produto.id}');
                },
                onDeletarClick: () async {
                  await ref.watch(listaProdutosProvider.notifier).deletarProduto(produto);
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
          context.push(AppRoutesNames.adicionarProduto);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
