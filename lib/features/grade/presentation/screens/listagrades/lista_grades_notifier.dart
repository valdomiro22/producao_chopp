import 'dart:async';

import 'package:producao_chopp/features/grade/providers/grade_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/entities/grade_entity.dart';

part 'lista_grades_notifier.g.dart';

@riverpod
class ListaGradesNotifier extends _$ListaGradesNotifier {
  Future<List<GradeEntity>> build() => _buscarGrades();

  Future<List<GradeEntity>> _buscarGrades() async {
    final useCase = ref.read(getAllGradesUseCaseProvider);
    final result = await useCase();

    return result.fold((failure) => throw Exception(failure.message), (listaGrades) => listaGrades);
  }

  Future<void> deletarGrade(GradeEntity grade) async {
    final listaAnterior = state.value ?? [];

    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final useCase = ref.read(deleteOneGradeUseCaseProvider);
      final result = await useCase(grade);

      return result.fold((failure) => throw Exception(failure.message), (_) {
        return listaAnterior.where((item) => item.id != grade.id).toList();
      });
    });
  }

  Future<void> recarregar() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(_buscarGrades);
  }
}
