// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adicionar_barril_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AdicionarBarrilNotifier)
final adicionarBarrilProvider = AdicionarBarrilNotifierProvider._();

final class AdicionarBarrilNotifierProvider
    extends $NotifierProvider<AdicionarBarrilNotifier, AdicionarBarrilState> {
  AdicionarBarrilNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'adicionarBarrilProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$adicionarBarrilNotifierHash();

  @$internal
  @override
  AdicionarBarrilNotifier create() => AdicionarBarrilNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AdicionarBarrilState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AdicionarBarrilState>(value),
    );
  }
}

String _$adicionarBarrilNotifierHash() =>
    r'd41f42ce6f980b6aa1d2c6785c73ca5139c2c502';

abstract class _$AdicionarBarrilNotifier
    extends $Notifier<AdicionarBarrilState> {
  AdicionarBarrilState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AdicionarBarrilState, AdicionarBarrilState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AdicionarBarrilState, AdicionarBarrilState>,
              AdicionarBarrilState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
