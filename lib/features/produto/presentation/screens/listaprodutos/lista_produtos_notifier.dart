import 'package:producao_chopp/features/produto/domain/entities/produto_entity.dart';
import 'package:producao_chopp/features/produto/providers/produto_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'lista_produtos_notifier.g.dart';

@riverpod
class ListaProdutosNotifier extends _$ListaProdutosNotifier {
  @override
  Future<List<ProdutoEntity>> build() {
    return _buscarProdutos();
  }

  Future<List<ProdutoEntity>> _buscarProdutos() async {
    final useCase = ref.read(getAllProdutosUseCaseProvider);
    final result = await useCase();

    return result.fold(
      (failure) => throw Exception(failure.message),
      (listaProdutos) => listaProdutos,
    );
  }

  Future<void> deletarProduto(ProdutoEntity produto) async {
    final listaAnterior = state.value ?? [];

    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final useCase = ref.read(deleteOneProdutoUseCaseProvider);
      final result = await useCase(produto);

      return result.fold((failure) => throw Exception(failure.message), (_) {
        return listaAnterior.where((item) => item.id != produto.id).toList();
      });
    });
  }

  Future<void> recarregar() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(_buscarProdutos);
  }
}
