// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista_barris_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ListaBarrisNotifier)
final listaBarrisProvider = ListaBarrisNotifierProvider._();

final class ListaBarrisNotifierProvider
    extends $AsyncNotifierProvider<ListaBarrisNotifier, List<BarrilEntity>> {
  ListaBarrisNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'listaBarrisProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$listaBarrisNotifierHash();

  @$internal
  @override
  ListaBarrisNotifier create() => ListaBarrisNotifier();
}

String _$listaBarrisNotifierHash() =>
    r'0018e1f1a940ee82d559ad32e4378c9e9865b0c2';

abstract class _$ListaBarrisNotifier
    extends $AsyncNotifier<List<BarrilEntity>> {
  FutureOr<List<BarrilEntity>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<BarrilEntity>>, List<BarrilEntity>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<BarrilEntity>>, List<BarrilEntity>>,
              AsyncValue<List<BarrilEntity>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
