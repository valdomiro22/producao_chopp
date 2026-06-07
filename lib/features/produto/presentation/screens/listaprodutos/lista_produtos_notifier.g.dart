// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista_produtos_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ListaProdutosNotifier)
final listaProdutosProvider = ListaProdutosNotifierProvider._();

final class ListaProdutosNotifierProvider
    extends $AsyncNotifierProvider<ListaProdutosNotifier, List<ProdutoEntity>> {
  ListaProdutosNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'listaProdutosProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$listaProdutosNotifierHash();

  @$internal
  @override
  ListaProdutosNotifier create() => ListaProdutosNotifier();
}

String _$listaProdutosNotifierHash() =>
    r'bdf1c44421fc94bf5da5f88464bd8efe8c9473be';

abstract class _$ListaProdutosNotifier
    extends $AsyncNotifier<List<ProdutoEntity>> {
  FutureOr<List<ProdutoEntity>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<ProdutoEntity>>, List<ProdutoEntity>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<ProdutoEntity>>, List<ProdutoEntity>>,
              AsyncValue<List<ProdutoEntity>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
