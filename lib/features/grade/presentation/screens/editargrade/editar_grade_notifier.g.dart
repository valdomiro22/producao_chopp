// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editar_grade_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EditarGradeNotifier)
final editarGradeProvider = EditarGradeNotifierProvider._();

final class EditarGradeNotifierProvider
    extends $NotifierProvider<EditarGradeNotifier, EditarGradeState> {
  EditarGradeNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'editarGradeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$editarGradeNotifierHash();

  @$internal
  @override
  EditarGradeNotifier create() => EditarGradeNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EditarGradeState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EditarGradeState>(value),
    );
  }
}

String _$editarGradeNotifierHash() =>
    r'41110813482ad1eede8798b98fb174bd5cdd6384';

abstract class _$EditarGradeNotifier extends $Notifier<EditarGradeState> {
  EditarGradeState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<EditarGradeState, EditarGradeState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<EditarGradeState, EditarGradeState>,
              EditarGradeState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
