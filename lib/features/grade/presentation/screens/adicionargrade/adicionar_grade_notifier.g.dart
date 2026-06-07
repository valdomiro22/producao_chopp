// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adicionar_grade_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AdicionarGradeNotifier)
final adicionarGradeProvider = AdicionarGradeNotifierProvider._();

final class AdicionarGradeNotifierProvider
    extends $NotifierProvider<AdicionarGradeNotifier, AdicionarGradeState> {
  AdicionarGradeNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'adicionarGradeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$adicionarGradeNotifierHash();

  @$internal
  @override
  AdicionarGradeNotifier create() => AdicionarGradeNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AdicionarGradeState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AdicionarGradeState>(value),
    );
  }
}

String _$adicionarGradeNotifierHash() =>
    r'782cdf6bddcf4139c4750f703a8d47e3d64facfa';

abstract class _$AdicionarGradeNotifier extends $Notifier<AdicionarGradeState> {
  AdicionarGradeState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AdicionarGradeState, AdicionarGradeState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AdicionarGradeState, AdicionarGradeState>,
              AdicionarGradeState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
