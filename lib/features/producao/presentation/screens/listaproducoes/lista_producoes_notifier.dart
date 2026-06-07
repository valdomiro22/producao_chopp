import 'package:producao_chopp/features/producao/domain/entities/producao_entity.dart';
import 'package:producao_chopp/features/producao/providers/producao_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'lista_producoes_notifier.g.dart';

@riverpod
class ListaProducoesNotifier extends _$ListaProducoesNotifier {
  Future<List<ProducaoEntity>> build() => _buscarProducoes();

  Future<List<ProducaoEntity>> _buscarProducoes() async {
    final useCase = ref.read(getAllProducoesUseCaseProvider);
    final result = await useCase();

    return result.fold(
      (failure) => throw Exception(failure.message),
      (listaProducoes) => listaProducoes,
    );
  }

  Future<void> deletarProducao(ProducaoEntity producao) async {
    final listaAnterior = state.value ?? [];

    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final useCase = ref.read(deleteOneProducaoUseCaseProvider);
      final result = await useCase(producao);

      return result.fold((failure) => throw Exception(failure.message), (_) {
        return listaAnterior.where((item) => item.id != producao.id).toList();
      });
    });
  }

  Future<void> recarregar() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(_buscarProducoes);
  }
}
