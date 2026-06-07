// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista_grades_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ListaGradesNotifier)
final listaGradesProvider = ListaGradesNotifierProvider._();

final class ListaGradesNotifierProvider
    extends $AsyncNotifierProvider<ListaGradesNotifier, List<GradeEntity>> {
  ListaGradesNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'listaGradesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$listaGradesNotifierHash();

  @$internal
  @override
  ListaGradesNotifier create() => ListaGradesNotifier();
}

String _$listaGradesNotifierHash() =>
    r'69445ec13d37ddc6461966ecd3cb6b2a317ddadc';

abstract class _$ListaGradesNotifier extends $AsyncNotifier<List<GradeEntity>> {
  FutureOr<List<GradeEntity>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<GradeEntity>>, List<GradeEntity>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<GradeEntity>>, List<GradeEntity>>,
              AsyncValue<List<GradeEntity>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
