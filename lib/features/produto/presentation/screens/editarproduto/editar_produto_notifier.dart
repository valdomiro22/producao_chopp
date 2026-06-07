import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:producao_chopp/features/produto/domain/usecases/update_produto_use_case.dart';
import 'package:producao_chopp/features/produto/presentation/screens/listaprodutos/lista_produtos_notifier.dart';
import 'package:producao_chopp/features/produto/providers/produto_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'editar_produto_notifier.freezed.dart';

part 'editar_produto_notifier.g.dart';

@riverpod
class EditarProdutoNotifier extends _$EditarProdutoNotifier {
  @override
  EditarProdutoState build() => EditarProdutoState.inicial();

  Future<void> buscarProduto(String produtoId) async {
    final useCase = ref.read(getOneProdutoUseCaseProvider);

    state = state.copyWith(isLoading: true, erroGeral: null, isSuccess: false);

    final result = await useCase(produtoId);
    result.fold(
      (failure) {
        state = state.copyWith(isLoading: false, erroGeral: failure.message);
      },
      (produto) {
        state = state.copyWith(
          id: produto.id,
          nome: produto.nome,
          prazoValidade: produto.prazoValidade.toString(),
          criadoEm: produto.criadoEm,
          isLoading: false,
          erroGeral: null,
        );
      },
    );
  }

  void onNomeChanged(String value) {
    state = state.copyWith(nome: value, erroNome: null, erroGeral: null);
  }

  void onPrazoValidadeChanged(String value) {
    state = state.copyWith(
      prazoValidade: value,
      erroPrazoValidade: null,
      erroGeral: null,
      isSuccess: false,
    );
  }

  Future<void> editar() async {
    if (!_isCamposValidos()) return;

    final prazoInt = int.tryParse(state.prazoValidade.trim());
    if (prazoInt == null || prazoInt <= 0) {
      state = state.copyWith(erroPrazoValidade: 'Digite um prazo de validade válido');
      return;
    }

    state = state.copyWith(isLoading: true, erroGeral: null, isSuccess: false);

    final params = UpdateProdutoParams(
      nome: state.nome.trim(),
      prazoValidade: prazoInt,
      id: state.id,
      criadoEm: state.criadoEm ?? DateTime.now(),
    );

    final useCase = ref.read(updateProdutoUseCaseProvider);
    final result = await useCase(params);

    result.fold(
      (failure) {
        state = state.copyWith(isLoading: false, erroGeral: failure.message, isSuccess: false);
      },
      (_) {
        ref.invalidate(listaProdutosProvider);
        state = state.copyWith(isLoading: false, isSuccess: true);
      },
    );
  }

  bool _isCamposValidos() {
    bool validos = true;
    String? erroNome;
    String? erroPrazoValidade;

    if (state.nome.trim().isEmpty) {
      validos = false;
      erroNome = 'Digite o nome';
    }

    if (state.prazoValidade.trim().isEmpty) {
      validos = false;
      erroPrazoValidade = 'Digite o volume';
    }

    state = state.copyWith(
      erroNome: erroNome,
      erroPrazoValidade: erroPrazoValidade,
      erroGeral: null,
    );

    return validos;
  }

  void limpar() => state = EditarProdutoState.inicial();
}

@freezed
sealed class EditarProdutoState with _$EditarProdutoState {
  const factory EditarProdutoState({
    @Default('') String id,
    @Default('') String nome,
    @Default('') String prazoValidade,
    DateTime? criadoEm,
    String? erroGeral,
    String? erroNome,
    String? erroPrazoValidade,
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default(false) bool camposValidos,
  }) = _EditarProdutoState;

  factory EditarProdutoState.inicial() => const EditarProdutoState();
}
