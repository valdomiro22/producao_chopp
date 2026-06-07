// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista_anotacoes_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ListaAnotacoesNotifier)
final listaAnotacoesProvider = ListaAnotacoesNotifierFamily._();

final class ListaAnotacoesNotifierProvider
    extends
        $AsyncNotifierProvider<ListaAnotacoesNotifier, List<AnotacaoEntity>> {
  ListaAnotacoesNotifierProvider._({
    required ListaAnotacoesNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'listaAnotacoesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$listaAnotacoesNotifierHash();

  @override
  String toString() {
    return r'listaAnotacoesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ListaAnotacoesNotifier create() => ListaAnotacoesNotifier();

  @override
  bool operator ==(Object other) {
    return other is ListaAnotacoesNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$listaAnotacoesNotifierHash() =>
    r'150a95018df6ecc371ab4350c4a2a2fdaeaa67d8';

final class ListaAnotacoesNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          ListaAnotacoesNotifier,
          AsyncValue<List<AnotacaoEntity>>,
          List<AnotacaoEntity>,
          FutureOr<List<AnotacaoEntity>>,
          String
        > {
  ListaAnotacoesNotifierFamily._()
    : super(
        retry: null,
        name: r'listaAnotacoesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ListaAnotacoesNotifierProvider call(String producaoId) =>
      ListaAnotacoesNotifierProvider._(argument: producaoId, from: this);

  @override
  String toString() => r'listaAnotacoesProvider';
}

abstract class _$ListaAnotacoesNotifier
    extends $AsyncNotifier<List<AnotacaoEntity>> {
  late final _$args = ref.$arg as String;
  String get producaoId => _$args;

  FutureOr<List<AnotacaoEntity>> build(String producaoId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<List<AnotacaoEntity>>, List<AnotacaoEntity>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<AnotacaoEntity>>,
                List<AnotacaoEntity>
              >,
              AsyncValue<List<AnotacaoEntity>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
