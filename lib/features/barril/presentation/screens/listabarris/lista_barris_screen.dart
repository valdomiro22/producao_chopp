import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:producao_chopp/features/barril/presentation/screens/listabarris/lista_barris_notifier.dart';

import '../../../../../routes/app_routes_names.dart';
import '../../components/item_lista_barril.dart';

class ListaBarrisScreen extends ConsumerWidget {
  const ListaBarrisScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(listaBarrisProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Barris')),
      body: state.when(
        loading: () {
          return const Center(child: CircularProgressIndicator());
        },
        error: (error, stackTrace) {
          return Center(child: Text(error.toString().replaceFirst('Exception: ', '')));
        },
        data: (barris) {
          if (barris.isEmpty) {
            return const Center(child: Text('Nenhum barril cadastrado'));
          }

          return ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            itemCount: barris.length,
            itemBuilder: (context, index) {
              final barril = barris[index];

              return ItemListaBarril(
                barril: barril,
                onEditarClick: () {
                  context.push('${AppRoutesNames.editarBarril}/${barril.id}');
                },
                onDeletarClick: () async {
                  await ref.watch(listaBarrisProvider.notifier).deletarBarril(barril);
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
          context.push(AppRoutesNames.adicionarBarril);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
