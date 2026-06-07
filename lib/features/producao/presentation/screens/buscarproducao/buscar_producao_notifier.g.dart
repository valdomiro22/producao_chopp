// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buscar_producao_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BuscarProducaoDatalhadaNotifier)
final buscarProducaoDatalhadaProvider =
    BuscarProducaoDatalhadaNotifierFamily._();

final class BuscarProducaoDatalhadaNotifierProvider
    extends
        $AsyncNotifierProvider<
          BuscarProducaoDatalhadaNotifier,
          ProducaoDetalhada
        > {
  BuscarProducaoDatalhadaNotifierProvider._({
    required BuscarProducaoDatalhadaNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'buscarProducaoDatalhadaProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$buscarProducaoDatalhadaNotifierHash();

  @override
  String toString() {
    return r'buscarProducaoDatalhadaProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  BuscarProducaoDatalhadaNotifier create() => BuscarProducaoDatalhadaNotifier();

  @override
  bool operator ==(Object other) {
    return other is BuscarProducaoDatalhadaNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$buscarProducaoDatalhadaNotifierHash() =>
    r'549826934215f6d4ba118418ff34c1f72f692c82';

final class BuscarProducaoDatalhadaNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          BuscarProducaoDatalhadaNotifier,
          AsyncValue<ProducaoDetalhada>,
          ProducaoDetalhada,
          FutureOr<ProducaoDetalhada>,
          String
        > {
  BuscarProducaoDatalhadaNotifierFamily._()
    : super(
        retry: null,
        name: r'buscarProducaoDatalhadaProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  BuscarProducaoDatalhadaNotifierProvider call(String producaoId) =>
      BuscarProducaoDatalhadaNotifierProvider._(
        argument: producaoId,
        from: this,
      );

  @override
  String toString() => r'buscarProducaoDatalhadaProvider';
}

abstract class _$BuscarProducaoDatalhadaNotifier
    extends $AsyncNotifier<ProducaoDetalhada> {
  late final _$args = ref.$arg as String;
  String get producaoId => _$args;

  FutureOr<ProducaoDetalhada> build(String producaoId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<ProducaoDetalhada>, ProducaoDetalhada>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ProducaoDetalhada>, ProducaoDetalhada>,
              AsyncValue<ProducaoDetalhada>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
