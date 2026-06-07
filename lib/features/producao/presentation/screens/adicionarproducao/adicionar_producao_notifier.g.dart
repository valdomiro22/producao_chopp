// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adicionar_producao_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AdicionarProducaoNotifier)
final adicionarProducaoProvider = AdicionarProducaoNotifierProvider._();

final class AdicionarProducaoNotifierProvider
    extends
        $NotifierProvider<AdicionarProducaoNotifier, AdicionarProducaoState> {
  AdicionarProducaoNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'adicionarProducaoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$adicionarProducaoNotifierHash();

  @$internal
  @override
  AdicionarProducaoNotifier create() => AdicionarProducaoNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AdicionarProducaoState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AdicionarProducaoState>(value),
    );
  }
}

String _$adicionarProducaoNotifierHash() =>
    r'b993b60a7c8110529015e884a6f823247fc1628d';

abstract class _$AdicionarProducaoNotifier
    extends $Notifier<AdicionarProducaoState> {
  AdicionarProducaoState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AdicionarProducaoState, AdicionarProducaoState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AdicionarProducaoState, AdicionarProducaoState>,
              AdicionarProducaoState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
