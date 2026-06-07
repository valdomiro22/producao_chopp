// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista_producoes_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ListaProducoesNotifier)
final listaProducoesProvider = ListaProducoesNotifierProvider._();

final class ListaProducoesNotifierProvider
    extends
        $AsyncNotifierProvider<ListaProducoesNotifier, List<ProducaoEntity>> {
  ListaProducoesNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'listaProducoesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$listaProducoesNotifierHash();

  @$internal
  @override
  ListaProducoesNotifier create() => ListaProducoesNotifier();
}

String _$listaProducoesNotifierHash() =>
    r'8d3d13af8f778c922565d7f4512189ec666e33b5';

abstract class _$ListaProducoesNotifier
    extends $AsyncNotifier<List<ProducaoEntity>> {
  FutureOr<List<ProducaoEntity>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<List<ProducaoEntity>>, List<ProducaoEntity>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<ProducaoEntity>>,
                List<ProducaoEntity>
              >,
              AsyncValue<List<ProducaoEntity>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
