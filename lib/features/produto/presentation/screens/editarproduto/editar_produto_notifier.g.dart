// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editar_produto_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EditarProdutoNotifier)
final editarProdutoProvider = EditarProdutoNotifierProvider._();

final class EditarProdutoNotifierProvider
    extends $NotifierProvider<EditarProdutoNotifier, EditarProdutoState> {
  EditarProdutoNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'editarProdutoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$editarProdutoNotifierHash();

  @$internal
  @override
  EditarProdutoNotifier create() => EditarProdutoNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EditarProdutoState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EditarProdutoState>(value),
    );
  }
}

String _$editarProdutoNotifierHash() =>
    r'fdb281c1778fb9f8aeec6a1ed0b15ee347ea8f59';

abstract class _$EditarProdutoNotifier extends $Notifier<EditarProdutoState> {
  EditarProdutoState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<EditarProdutoState, EditarProdutoState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<EditarProdutoState, EditarProdutoState>,
              EditarProdutoState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
