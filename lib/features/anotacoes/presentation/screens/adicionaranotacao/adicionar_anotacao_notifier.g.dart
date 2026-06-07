// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adicionar_anotacao_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AdicionarAnotacaoNotifier)
final adicionarAnotacaoProvider = AdicionarAnotacaoNotifierProvider._();

final class AdicionarAnotacaoNotifierProvider
    extends
        $NotifierProvider<AdicionarAnotacaoNotifier, AdicionarAnotacaoState> {
  AdicionarAnotacaoNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'adicionarAnotacaoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$adicionarAnotacaoNotifierHash();

  @$internal
  @override
  AdicionarAnotacaoNotifier create() => AdicionarAnotacaoNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AdicionarAnotacaoState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AdicionarAnotacaoState>(value),
    );
  }
}

String _$adicionarAnotacaoNotifierHash() =>
    r'f99ed8205a2ef792b31cf7eb79e83b33aa73641f';

abstract class _$AdicionarAnotacaoNotifier
    extends $Notifier<AdicionarAnotacaoState> {
  AdicionarAnotacaoState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AdicionarAnotacaoState, AdicionarAnotacaoState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AdicionarAnotacaoState, AdicionarAnotacaoState>,
              AdicionarAnotacaoState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
