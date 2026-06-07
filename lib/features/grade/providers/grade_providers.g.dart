// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grade_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(gradeDao)
final gradeDaoProvider = GradeDaoProvider._();

final class GradeDaoProvider
    extends $FunctionalProvider<GradeDao, GradeDao, GradeDao>
    with $Provider<GradeDao> {
  GradeDaoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gradeDaoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gradeDaoHash();

  @$internal
  @override
  $ProviderElement<GradeDao> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GradeDao create(Ref ref) {
    return gradeDao(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GradeDao value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GradeDao>(value),
    );
  }
}

String _$gradeDaoHash() => r'1cec1a9544e69dbcea3e08df5f245948e1e528b2';

@ProviderFor(gradeLocalDataSource)
final gradeLocalDataSourceProvider = GradeLocalDataSourceProvider._();

final class GradeLocalDataSourceProvider
    extends
        $FunctionalProvider<
          GradeLocalDataSource,
          GradeLocalDataSource,
          GradeLocalDataSource
        >
    with $Provider<GradeLocalDataSource> {
  GradeLocalDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gradeLocalDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gradeLocalDataSourceHash();

  @$internal
  @override
  $ProviderElement<GradeLocalDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GradeLocalDataSource create(Ref ref) {
    return gradeLocalDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GradeLocalDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GradeLocalDataSource>(value),
    );
  }
}

String _$gradeLocalDataSourceHash() =>
    r'52f2f227ebe7d30f975804aa3b0cc86d2c4ea746';

@ProviderFor(gradeRepository)
final gradeRepositoryProvider = GradeRepositoryProvider._();

final class GradeRepositoryProvider
    extends
        $FunctionalProvider<GradeRepository, GradeRepository, GradeRepository>
    with $Provider<GradeRepository> {
  GradeRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gradeRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gradeRepositoryHash();

  @$internal
  @override
  $ProviderElement<GradeRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GradeRepository create(Ref ref) {
    return gradeRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GradeRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GradeRepository>(value),
    );
  }
}

String _$gradeRepositoryHash() => r'7c5bbf8607e1131893b66943d78bc88afd462e24';

@ProviderFor(insertGradeUseCase)
final insertGradeUseCaseProvider = InsertGradeUseCaseProvider._();

final class InsertGradeUseCaseProvider
    extends
        $FunctionalProvider<
          InsertGradeUseCase,
          InsertGradeUseCase,
          InsertGradeUseCase
        >
    with $Provider<InsertGradeUseCase> {
  InsertGradeUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'insertGradeUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$insertGradeUseCaseHash();

  @$internal
  @override
  $ProviderElement<InsertGradeUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  InsertGradeUseCase create(Ref ref) {
    return insertGradeUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(InsertGradeUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<InsertGradeUseCase>(value),
    );
  }
}

String _$insertGradeUseCaseHash() =>
    r'37ee6285044f8dae431de8e3a00f1d5ba005658e';

@ProviderFor(updateGradeUseCase)
final updateGradeUseCaseProvider = UpdateGradeUseCaseProvider._();

final class UpdateGradeUseCaseProvider
    extends
        $FunctionalProvider<
          UpdateGradeUseCase,
          UpdateGradeUseCase,
          UpdateGradeUseCase
        >
    with $Provider<UpdateGradeUseCase> {
  UpdateGradeUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'updateGradeUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$updateGradeUseCaseHash();

  @$internal
  @override
  $ProviderElement<UpdateGradeUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UpdateGradeUseCase create(Ref ref) {
    return updateGradeUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UpdateGradeUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UpdateGradeUseCase>(value),
    );
  }
}

String _$updateGradeUseCaseHash() =>
    r'babff8858c8933930085c008a651b31806b913ba';

@ProviderFor(getOneGradeUseCase)
final getOneGradeUseCaseProvider = GetOneGradeUseCaseProvider._();

final class GetOneGradeUseCaseProvider
    extends
        $FunctionalProvider<
          GetOneGradeUseCase,
          GetOneGradeUseCase,
          GetOneGradeUseCase
        >
    with $Provider<GetOneGradeUseCase> {
  GetOneGradeUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getOneGradeUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getOneGradeUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetOneGradeUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetOneGradeUseCase create(Ref ref) {
    return getOneGradeUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetOneGradeUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetOneGradeUseCase>(value),
    );
  }
}

String _$getOneGradeUseCaseHash() =>
    r'5f30c37d42a25efd784e2f04bda8150444e5bd0b';

@ProviderFor(deleteOneGradeUseCase)
final deleteOneGradeUseCaseProvider = DeleteOneGradeUseCaseProvider._();

final class DeleteOneGradeUseCaseProvider
    extends
        $FunctionalProvider<
          DeleteOneGradeUseCase,
          DeleteOneGradeUseCase,
          DeleteOneGradeUseCase
        >
    with $Provider<DeleteOneGradeUseCase> {
  DeleteOneGradeUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'deleteOneGradeUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$deleteOneGradeUseCaseHash();

  @$internal
  @override
  $ProviderElement<DeleteOneGradeUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DeleteOneGradeUseCase create(Ref ref) {
    return deleteOneGradeUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DeleteOneGradeUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DeleteOneGradeUseCase>(value),
    );
  }
}

String _$deleteOneGradeUseCaseHash() =>
    r'fa402d49f6da373950b656ee41350991ba585ea2';

@ProviderFor(getAllGradesUseCase)
final getAllGradesUseCaseProvider = GetAllGradesUseCaseProvider._();

final class GetAllGradesUseCaseProvider
    extends
        $FunctionalProvider<
          GetAllGradesUseCase,
          GetAllGradesUseCase,
          GetAllGradesUseCase
        >
    with $Provider<GetAllGradesUseCase> {
  GetAllGradesUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAllGradesUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getAllGradesUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetAllGradesUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetAllGradesUseCase create(Ref ref) {
    return getAllGradesUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAllGradesUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAllGradesUseCase>(value),
    );
  }
}

String _$getAllGradesUseCaseHash() =>
    r'd54253965501b2fc6bc5a9d4183c33c1c232ac69';
