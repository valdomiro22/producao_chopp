import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:producao_chopp/features/grade/presentation/screens/listagrades/lista_grades_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/usecases/update_grade_use_case.dart';
import '../../../providers/grade_providers.dart';

part 'editar_grade_notifier.freezed.dart';

part 'editar_grade_notifier.g.dart';

@riverpod
class EditarGradeNotifier extends _$EditarGradeNotifier {
  @override
  EditarGradeState build() => EditarGradeState.inicial();

  Future<void> buscarGrade(String gradeId) async {
    final useCase = ref.read(getOneGradeUseCaseProvider);

    state = state.copyWith(isLoading: true, erroGeral: null, isSuccess: false);

    final result = await useCase(gradeId);
    result.fold(
      (failure) {
        state = state.copyWith(isLoading: false, erroGeral: failure.message);
      },
      (grade) {
        state = state.copyWith(
          id: grade.id,
          numero: grade.numero,
          data: grade.data,
          criadoEm: grade.criadoEm,
          isLoading: false,
          erroGeral: null,
        );
      },
    );
  }

  void onNumeroChanged(String numero) {
    state = state.copyWith(numero: numero, erroNumero: null, erroGeral: null, isSuccess: false);
  }

  void onDataChanged(DateTime data) {
    state = state.copyWith(data: data, erroData: null, erroGeral: null, isSuccess: false);
  }

  Future<void> atualizarGrade() async {
    final numero = state.numero.trim();
    final data = state.data;

    String? erroNumero;
    String? erroData;

    if (numero.isEmpty) {
      erroNumero = 'Informe o número da grade';
    }

    if (data == null) {
      erroData = 'Informe a data da grade';
    }

    if (erroNumero != null || erroData != null) {
      state = state.copyWith(
        erroNumero: erroNumero,
        erroData: erroData,
        erroGeral: null,
        isSuccess: false,
      );
      return;
    }

    state = state.copyWith(
      isLoading: true,
      erroNumero: null,
      erroData: null,
      erroGeral: null,
      isSuccess: false,
    );

    final params = UpdateGradeParams(
      id: state.id,
      numero: numero,
      data: data!,
      criadoEm: state.criadoEm ?? DateTime.now(),
    );

    final useCase = ref.read(updateGradeUseCaseProvider);
    final result = await useCase(params);

    await result.fold(
      (failure) async {
        state = state.copyWith(isLoading: false, erroGeral: failure.message, isSuccess: false);
      },
      (_) async {
        ref.invalidate(listaGradesProvider);

        state = state.copyWith(isLoading: false, erroGeral: null, isSuccess: true);
      },
    );
  }

  void limpar() => state = EditarGradeState.inicial();
}

@freezed
sealed class EditarGradeState with _$EditarGradeState {
  const factory EditarGradeState({
    @Default('') String id,
    @Default('') String numero,
    DateTime? data,
    DateTime? criadoEm,
    String? erroGeral,
    String? erroNumero,
    String? erroData,
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default(false) bool camposValidos,
  }) = _EditarGradeState;

  factory EditarGradeState.inicial() => const EditarGradeState();
}
