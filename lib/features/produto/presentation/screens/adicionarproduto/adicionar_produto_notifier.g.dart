// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adicionar_produto_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AdicionarProdutoNotifier)
final adicionarProdutoProvider = AdicionarProdutoNotifierProvider._();

final class AdicionarProdutoNotifierProvider
    extends $NotifierProvider<AdicionarProdutoNotifier, AdicionarProdutoState> {
  AdicionarProdutoNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'adicionarProdutoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$adicionarProdutoNotifierHash();

  @$internal
  @override
  AdicionarProdutoNotifier create() => AdicionarProdutoNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AdicionarProdutoState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AdicionarProdutoState>(value),
    );
  }
}

String _$adicionarProdutoNotifierHash() =>
    r'4c801ae9e6d5154cf225fad53adffc5e528c260e';

abstract class _$AdicionarProdutoNotifier
    extends $Notifier<AdicionarProdutoState> {
  AdicionarProdutoState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AdicionarProdutoState, AdicionarProdutoState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AdicionarProdutoState, AdicionarProdutoState>,
              AdicionarProdutoState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
