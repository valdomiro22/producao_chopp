// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editar_barril_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EditarBarrilNotifier)
final editarBarrilProvider = EditarBarrilNotifierProvider._();

final class EditarBarrilNotifierProvider
    extends $NotifierProvider<EditarBarrilNotifier, EditarBarrilState> {
  EditarBarrilNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'editarBarrilProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$editarBarrilNotifierHash();

  @$internal
  @override
  EditarBarrilNotifier create() => EditarBarrilNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EditarBarrilState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EditarBarrilState>(value),
    );
  }
}

String _$editarBarrilNotifierHash() =>
    r'28e8b2116b67a92636145577bc293f87be9c01e4';

abstract class _$EditarBarrilNotifier extends $Notifier<EditarBarrilState> {
  EditarBarrilState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<EditarBarrilState, EditarBarrilState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<EditarBarrilState, EditarBarrilState>,
              EditarBarrilState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
