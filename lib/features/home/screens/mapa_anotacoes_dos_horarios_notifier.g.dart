// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mapa_anotacoes_dos_horarios_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MapaAnotacoesDosHorariosNotifier)
final mapaAnotacoesDosHorariosProvider =
    MapaAnotacoesDosHorariosNotifierFamily._();

final class MapaAnotacoesDosHorariosNotifierProvider
    extends
        $AsyncNotifierProvider<
          MapaAnotacoesDosHorariosNotifier,
          Map<String, AnotacaoEntity>
        > {
  MapaAnotacoesDosHorariosNotifierProvider._({
    required MapaAnotacoesDosHorariosNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'mapaAnotacoesDosHorariosProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$mapaAnotacoesDosHorariosNotifierHash();

  @override
  String toString() {
    return r'mapaAnotacoesDosHorariosProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  MapaAnotacoesDosHorariosNotifier create() =>
      MapaAnotacoesDosHorariosNotifier();

  @override
  bool operator ==(Object other) {
    return other is MapaAnotacoesDosHorariosNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$mapaAnotacoesDosHorariosNotifierHash() =>
    r'91efaa2787cfddbbf374374105301724e5b63b83';

final class MapaAnotacoesDosHorariosNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          MapaAnotacoesDosHorariosNotifier,
          AsyncValue<Map<String, AnotacaoEntity>>,
          Map<String, AnotacaoEntity>,
          FutureOr<Map<String, AnotacaoEntity>>,
          String
        > {
  MapaAnotacoesDosHorariosNotifierFamily._()
    : super(
        retry: null,
        name: r'mapaAnotacoesDosHorariosProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MapaAnotacoesDosHorariosNotifierProvider call(String producaoId) =>
      MapaAnotacoesDosHorariosNotifierProvider._(
        argument: producaoId,
        from: this,
      );

  @override
  String toString() => r'mapaAnotacoesDosHorariosProvider';
}

abstract class _$MapaAnotacoesDosHorariosNotifier
    extends $AsyncNotifier<Map<String, AnotacaoEntity>> {
  late final _$args = ref.$arg as String;
  String get producaoId => _$args;

  FutureOr<Map<String, AnotacaoEntity>> build(String producaoId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<Map<String, AnotacaoEntity>>,
              Map<String, AnotacaoEntity>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<Map<String, AnotacaoEntity>>,
                Map<String, AnotacaoEntity>
              >,
              AsyncValue<Map<String, AnotacaoEntity>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
