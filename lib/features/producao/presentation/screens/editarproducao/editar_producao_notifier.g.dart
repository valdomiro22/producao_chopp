// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editar_producao_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EditarProducaoNotifier)
final editarProducaoProvider = EditarProducaoNotifierProvider._();

final class EditarProducaoNotifierProvider
    extends $NotifierProvider<EditarProducaoNotifier, EditarProducaoState> {
  EditarProducaoNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'editarProducaoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$editarProducaoNotifierHash();

  @$internal
  @override
  EditarProducaoNotifier create() => EditarProducaoNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EditarProducaoState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EditarProducaoState>(value),
    );
  }
}

String _$editarProducaoNotifierHash() =>
    r'65537e1e197e714966c9b4bb3755c5ccd25c8100';

abstract class _$EditarProducaoNotifier extends $Notifier<EditarProducaoState> {
  EditarProducaoState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<EditarProducaoState, EditarProducaoState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<EditarProducaoState, EditarProducaoState>,
              EditarProducaoState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
