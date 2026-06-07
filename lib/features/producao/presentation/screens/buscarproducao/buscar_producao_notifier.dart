import 'package:producao_chopp/features/producao/providers/producao_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/entities/producao_detalhada.dart';

part 'buscar_producao_notifier.g.dart';

@riverpod
class BuscarProducaoDatalhadaNotifier extends _$BuscarProducaoDatalhadaNotifier {
  @override
  Future<ProducaoDetalhada> build(String producaoId) {
    return _buscarProducao(producaoId);
  }

  Future<ProducaoDetalhada> _buscarProducao(String producaoId) async {
    final useCase = ref.read(getProducaoDetalhadaProvider);
    final result = await useCase(producaoId);

    return result.fold(
      (failure) {
        throw Exception(failure.message);
      },
      (producao) {
        return producao;
      },
    );
  }

  Future<void> recarregar() async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      return _buscarProducao(producaoId);
    });
  }
}
