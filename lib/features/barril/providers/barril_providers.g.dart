// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'barril_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(barrilDao)
final barrilDaoProvider = BarrilDaoProvider._();

final class BarrilDaoProvider
    extends $FunctionalProvider<BarrilDao, BarrilDao, BarrilDao>
    with $Provider<BarrilDao> {
  BarrilDaoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'barrilDaoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$barrilDaoHash();

  @$internal
  @override
  $ProviderElement<BarrilDao> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  BarrilDao create(Ref ref) {
    return barrilDao(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BarrilDao value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BarrilDao>(value),
    );
  }
}

String _$barrilDaoHash() => r'77283d0a1d4b4b4a8e09570dda46251e663c713c';

@ProviderFor(barrilLocalDataSource)
final barrilLocalDataSourceProvider = BarrilLocalDataSourceProvider._();

final class BarrilLocalDataSourceProvider
    extends
        $FunctionalProvider<
          BarrilLocalDataSource,
          BarrilLocalDataSource,
          BarrilLocalDataSource
        >
    with $Provider<BarrilLocalDataSource> {
  BarrilLocalDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'barrilLocalDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$barrilLocalDataSourceHash();

  @$internal
  @override
  $ProviderElement<BarrilLocalDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  BarrilLocalDataSource create(Ref ref) {
    return barrilLocalDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BarrilLocalDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BarrilLocalDataSource>(value),
    );
  }
}

String _$barrilLocalDataSourceHash() =>
    r'3a6a2ff6e2104a847e850294c4eea95934196871';

@ProviderFor(barrilRepository)
final barrilRepositoryProvider = BarrilRepositoryProvider._();

final class BarrilRepositoryProvider
    extends
        $FunctionalProvider<
          BarrilRepository,
          BarrilRepository,
          BarrilRepository
        >
    with $Provider<BarrilRepository> {
  BarrilRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'barrilRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$barrilRepositoryHash();

  @$internal
  @override
  $ProviderElement<BarrilRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  BarrilRepository create(Ref ref) {
    return barrilRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BarrilRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BarrilRepository>(value),
    );
  }
}

String _$barrilRepositoryHash() => r'aa21776b6802d385fa77149f2b745d8b0b520aa2';

@ProviderFor(insertBarrilUseCase)
final insertBarrilUseCaseProvider = InsertBarrilUseCaseProvider._();

final class InsertBarrilUseCaseProvider
    extends
        $FunctionalProvider<
          InsertBarrilUseCase,
          InsertBarrilUseCase,
          InsertBarrilUseCase
        >
    with $Provider<InsertBarrilUseCase> {
  InsertBarrilUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'insertBarrilUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$insertBarrilUseCaseHash();

  @$internal
  @override
  $ProviderElement<InsertBarrilUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  InsertBarrilUseCase create(Ref ref) {
    return insertBarrilUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(InsertBarrilUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<InsertBarrilUseCase>(value),
    );
  }
}

String _$insertBarrilUseCaseHash() =>
    r'2c23ea9c304c0c56a12a7cbfc517b118dedd7cf8';

@ProviderFor(updateBarrilUseCase)
final updateBarrilUseCaseProvider = UpdateBarrilUseCaseProvider._();

final class UpdateBarrilUseCaseProvider
    extends
        $FunctionalProvider<
          UpdateBarrilUseCase,
          UpdateBarrilUseCase,
          UpdateBarrilUseCase
        >
    with $Provider<UpdateBarrilUseCase> {
  UpdateBarrilUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'updateBarrilUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$updateBarrilUseCaseHash();

  @$internal
  @override
  $ProviderElement<UpdateBarrilUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UpdateBarrilUseCase create(Ref ref) {
    return updateBarrilUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UpdateBarrilUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UpdateBarrilUseCase>(value),
    );
  }
}

String _$updateBarrilUseCaseHash() =>
    r'9f5454605b122d541bfc06467d56c2665dc9adb1';

@ProviderFor(getOneBarrilUseCase)
final getOneBarrilUseCaseProvider = GetOneBarrilUseCaseProvider._();

final class GetOneBarrilUseCaseProvider
    extends
        $FunctionalProvider<
          GetOneBarrilUseCase,
          GetOneBarrilUseCase,
          GetOneBarrilUseCase
        >
    with $Provider<GetOneBarrilUseCase> {
  GetOneBarrilUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getOneBarrilUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getOneBarrilUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetOneBarrilUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetOneBarrilUseCase create(Ref ref) {
    return getOneBarrilUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetOneBarrilUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetOneBarrilUseCase>(value),
    );
  }
}

String _$getOneBarrilUseCaseHash() =>
    r'798c1ff944e15237acbbbc350f34a8620dd9c13e';

@ProviderFor(deleteOneBarrilUseCase)
final deleteOneBarrilUseCaseProvider = DeleteOneBarrilUseCaseProvider._();

final class DeleteOneBarrilUseCaseProvider
    extends
        $FunctionalProvider<
          DeleteOneBarrilUseCase,
          DeleteOneBarrilUseCase,
          DeleteOneBarrilUseCase
        >
    with $Provider<DeleteOneBarrilUseCase> {
  DeleteOneBarrilUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'deleteOneBarrilUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$deleteOneBarrilUseCaseHash();

  @$internal
  @override
  $ProviderElement<DeleteOneBarrilUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DeleteOneBarrilUseCase create(Ref ref) {
    return deleteOneBarrilUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DeleteOneBarrilUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DeleteOneBarrilUseCase>(value),
    );
  }
}

String _$deleteOneBarrilUseCaseHash() =>
    r'076c18c009df56c4342c8a30ce5781f8c348406a';

@ProviderFor(getAllBarrisUseCase)
final getAllBarrisUseCaseProvider = GetAllBarrisUseCaseProvider._();

final class GetAllBarrisUseCaseProvider
    extends
        $FunctionalProvider<
          GetAllBarrisUseCase,
          GetAllBarrisUseCase,
          GetAllBarrisUseCase
        >
    with $Provider<GetAllBarrisUseCase> {
  GetAllBarrisUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAllBarrisUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getAllBarrisUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetAllBarrisUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetAllBarrisUseCase create(Ref ref) {
    return getAllBarrisUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAllBarrisUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAllBarrisUseCase>(value),
    );
  }
}

String _$getAllBarrisUseCaseHash() =>
    r'd8a08ac8e040c5a5bc87420e53dbe4e857cbeb24';
