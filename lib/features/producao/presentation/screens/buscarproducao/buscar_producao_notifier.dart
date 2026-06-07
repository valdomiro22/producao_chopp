import 'package:flutter_riverpod/legacy.dart';

import '../../../../../common/state/UiState.dart';
import '../../../domain/entities/producao_detalhada.dart';
import '../../../domain/usecases/get_producao_detalhada_use_case.dart';

class BuscarProducaoNotifier extends StateNotifier<UiState<ProducaoDetalhada>> {
  final GetProducaoDetalhadaUseCase _getOneProducaoDetalhada;
  final String producaoId;

  BuscarProducaoNotifier(this._getOneProducaoDetalhada, {required this.producaoId})
    : super(const Loading()) {
    getProducao();
  }

  Future<void> getProducao() async {
    state = const Loading();

    final result = await _getOneProducaoDetalhada(producaoId);

    result.fold(
      (failure) {
        state = Error(failure.message);
      },
      (producao) {
        state = Success(producao);
      },
    );
  }
}
