import 'package:producao_chopp/features/barril/domain/entities/barril_entity.dart';
import 'package:producao_chopp/features/barril/providers/barril_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'lista_barris_notifier.g.dart';

@riverpod
class ListaBarrisNotifier extends _$ListaBarrisNotifier {
  @override
  Future<List<BarrilEntity>> build() {
    return _buscarBarris();
  }

  Future<List<BarrilEntity>> _buscarBarris() async {
    final useCase = ref.read(getAllBarrisUseCaseProvider);
    final result = await useCase();

    return result.fold(
      (failure) => throw Exception(failure.message),
      (listaBarris) => listaBarris,
    );
  }

  Future<void> deletarBarril(BarrilEntity barril) async {
    final listaAnterior = state.value ?? [];

    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final useCase = ref.read(deleteOneBarrilUseCaseProvider);
      final result = await useCase(barril);

      return result.fold(
        (failure) => throw Exception(failure.message),
        (_) {

          // Limpa a lista local sem procurar no banco. poderia trocar por isso: (_) => _buscarBarris(),
          return listaAnterior  // Transforma esta lista em uma nova lista contendo os itens que não foram deletados
          .where((item) => item.id != barril.id)  // Recria a lista retiando o item que foi deletado
          .toList();},
      );
    });
  }

  Future<void> recarregar() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(_buscarBarris);
  }
}