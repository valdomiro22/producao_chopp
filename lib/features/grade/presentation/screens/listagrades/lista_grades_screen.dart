import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../../routes/app_routes_names.dart';
import '../../components/item_lista_grade_component.dart';
import 'lista_grades_notifier.dart';

class ListaGradesScreen extends ConsumerWidget {
  const ListaGradesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(listaGradesProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Grades', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: state.when(
        loading: () {
          return const Center(child: CircularProgressIndicator());
        },
        error: (error, stackTrace) {
          return Center(child: Text(error.toString().replaceFirst('Exception: ', '')));
        },
        data: (grades) {
          if (grades.isEmpty) {
            return const Center(child: Text('Nenhuma grade cadastrada'));
          }

          return ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            itemCount: grades.length,
            itemBuilder: (context, index) {
              final grade = grades[index];

              return ItemListaGradeComponent(
                grade: grade,
                onEditarClick: () => context.push('${AppRoutesNames.editarGrade}/${grade.id}'),
                onDeletarClick: () async {
                  await ref.watch(listaGradesProvider.notifier).deletarGrade(grade);
                },
                onItemClick: () => context.push('${AppRoutesNames.listaProducoes}/${grade.id}'),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
          context.push(AppRoutesNames.adicionarGrade);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
