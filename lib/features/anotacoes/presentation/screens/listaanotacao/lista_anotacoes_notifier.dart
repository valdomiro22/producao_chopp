import 'package:producao_chopp/features/anotacoes/providers/anotacao_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/entities/movimentacao_entity.dart';

part 'lista_anotacoes_notifier.g.dart';

@riverpod
class ListaAnotacoesNotifier extends _$ListaAnotacoesNotifier {
  @override
  Future<List<AnotacaoEntity>> build(String producaoId) {
    return _buscarAnotacoes(producaoId);
  }

  Future<List<AnotacaoEntity>> _buscarAnotacoes(String producaoId) async {
    final useCase = ref.read(getAllAnotacoesOfProducaoUseCaseProvider);
    final result = await useCase(producaoId);

    return result.fold(
          (failure) => throw Exception(failure.message),
          (listaAnotacoes) => listaAnotacoes,
    );
  }

  Future<void> deletarAnotacao(AnotacaoEntity anotacao) async {
    final listaAnterior = state.value ?? [];

    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final useCase = ref.read(deleteOneAnotacaoUseCaseProvider);
      final result = await useCase(anotacao);

      return result.fold(
            (failure) => throw Exception(failure.message),
            (_) {
          return listaAnterior
              .where((item) => item.id != anotacao.id)
              .toList();
        },
      );
    });
  }

  Future<void> recarregar() async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      return _buscarAnotacoes(producaoId);
    });
  }
}