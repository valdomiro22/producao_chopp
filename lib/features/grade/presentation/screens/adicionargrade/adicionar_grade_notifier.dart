import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:producao_chopp/features/grade/presentation/screens/listagrades/lista_grades_notifier.dart';
import 'package:producao_chopp/features/grade/providers/grade_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/usecases/insert_grade_use_case.dart';

part 'adicionar_grade_notifier.freezed.dart';

part 'adicionar_grade_notifier.g.dart';

@riverpod
class AdicionarGradeNotifier extends _$AdicionarGradeNotifier {
  @override
  AdicionarGradeState build() => AdicionarGradeState.inicial();

  void onNumeroChanged(String value) {
    state = state.copyWith(numero: value, erroNumero: null, erroGeral: null, isSuccess: false);
  }

  void onDataChanged(DateTime value) {
    state = state.copyWith(data: value, erroData: null, erroGeral: null, isSuccess: false);
  }

  Future<void> adicionarGrade() async {
    state = state.copyWith(erroNumero: null, erroData: null, erroGeral: null, isSuccess: false);

    if (!_validarCampos()) return;

    state = state.copyWith(isLoading: true, erroGeral: null, isSuccess: false);

    final params = InsertGradeParams(numero: state.numero.trim(), data: state.data!);

    final useCase = ref.read(insertGradeUseCaseProvider);
    final result = await useCase(params);

    await result.fold(
      (failure) async {
        state = state.copyWith(isLoading: false, erroGeral: failure.message, isSuccess: false);
      },
      (_) async {
        ref.invalidate(listaGradesProvider);

        state = state.copyWith(isLoading: false, isSuccess: true);
      },
    );
  }

  bool _validarCampos() {
    bool valido = true;

    String? erroNumero;
    String? erroData;

    if (state.numero.trim().isEmpty) {
      valido = false;
      erroNumero = 'Digite o número';
    }

    if (state.data == null) {
      valido = false;
      erroData = 'Selecione a data';
    }

    state = state.copyWith(erroNumero: erroNumero, erroData: erroData);

    return valido;
  }

  void limpar() {
    state = const AdicionarGradeState();
  }
}

@freezed
sealed class AdicionarGradeState with _$AdicionarGradeState {
  const factory AdicionarGradeState({
    @Default('') String numero,
    DateTime? data,
    String? erroGeral,
    String? erroNumero,
    String? erroData,
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default(false) bool camposValidos,
  }) = _AdicionarGradeState;

  factory AdicionarGradeState.inicial() => const AdicionarGradeState();
}
