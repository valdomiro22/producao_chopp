import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:producao_chopp/core/enums/turno.dart';
import 'package:producao_chopp/features/anotacoes/providers/anotacao_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/usecases/insert_anotacao_use_case.dart';

part 'adicionar_anotacao_notifier.freezed.dart';

part 'adicionar_anotacao_notifier.g.dart';

@riverpod
class AdicionarAnotacaoNotifier extends _$AdicionarAnotacaoNotifier {
  @override
  AdicionarAnotacaoState build() => AdicionarAnotacaoState.inicial();

  void onTurnoChanged(Turno value) {
    state = state.copyWith(turno: value, erroTurno: null, erroGeral: null, isSuccess: false);
  }

  void onQuantidadeChanged(String value) {
    state = state.copyWith(
      quantidade: value,
      erroQuantidade: null,
      erroGeral: null,
      isSuccess: false,
    );
  }

  Future<void> adicionarAnotacao(String producaoId, String horarioReferente) async {
    state = state.copyWith(
      erroTurno: null,
      erroQuantidade: null,
      erroGeral: null,
      isSuccess: false,
    );

    final quantidadeInt = int.tryParse(state.quantidade.trim());
    if (quantidadeInt == null || quantidadeInt == 0) {
      state = state.copyWith(erroQuantidade: 'Digite uma quantidade válida');
      return;
    }

    state = state.copyWith(isLoading: true, erroGeral: null, isSuccess: false);

    final params = InsertAnotacaoParams(
      producaoId: producaoId,
      quantidade: quantidadeInt,
      turnoId: state.turno.id,
      horarioReferente: horarioReferente,
    );

    final useCase = ref.read(insertAnotacaoUseCaseProvider);
    final result = await useCase(params);
    result.fold(
      (failure) {
        state = state.copyWith(isLoading: false, erroGeral: failure.message, isSuccess: false);
      },
      (_) {
        // ref.invalidate(lis);
        state = state.copyWith(isLoading: false, isSuccess: true);
      },
    );
  }
}

@freezed
sealed class AdicionarAnotacaoState with _$AdicionarAnotacaoState {
  const factory AdicionarAnotacaoState({
    @Default('') String quantidade,
    @Default(Turno.turnoA) Turno turno,
    @Default(false) bool isDescartavel,
    String? erroGeral,
    String? erroQuantidade,
    String? erroTurno,
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default(false) bool isCamposValidos,
  }) = _AdicionarAnotacaoState;

  factory AdicionarAnotacaoState.inicial() => const AdicionarAnotacaoState();
}
