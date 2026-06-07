// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produto_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(produtoDao)
final produtoDaoProvider = ProdutoDaoProvider._();

final class ProdutoDaoProvider
    extends $FunctionalProvider<ProdutoDao, ProdutoDao, ProdutoDao>
    with $Provider<ProdutoDao> {
  ProdutoDaoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'produtoDaoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$produtoDaoHash();

  @$internal
  @override
  $ProviderElement<ProdutoDao> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ProdutoDao create(Ref ref) {
    return produtoDao(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProdutoDao value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProdutoDao>(value),
    );
  }
}

String _$produtoDaoHash() => r'4700d86223290e146950321ae4d283e05d1d16e6';

@ProviderFor(produtoLocalDataSource)
final produtoLocalDataSourceProvider = ProdutoLocalDataSourceProvider._();

final class ProdutoLocalDataSourceProvider
    extends
        $FunctionalProvider<
          ProdutoLocalDataSource,
          ProdutoLocalDataSource,
          ProdutoLocalDataSource
        >
    with $Provider<ProdutoLocalDataSource> {
  ProdutoLocalDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'produtoLocalDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$produtoLocalDataSourceHash();

  @$internal
  @override
  $ProviderElement<ProdutoLocalDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ProdutoLocalDataSource create(Ref ref) {
    return produtoLocalDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProdutoLocalDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProdutoLocalDataSource>(value),
    );
  }
}

String _$produtoLocalDataSourceHash() =>
    r'60478225ce24b49b6880dcf50693a06ffbacd16d';

@ProviderFor(produtoRepository)
final produtoRepositoryProvider = ProdutoRepositoryProvider._();

final class ProdutoRepositoryProvider
    extends
        $FunctionalProvider<
          ProdutoRepository,
          ProdutoRepository,
          ProdutoRepository
        >
    with $Provider<ProdutoRepository> {
  ProdutoRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'produtoRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$produtoRepositoryHash();

  @$internal
  @override
  $ProviderElement<ProdutoRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ProdutoRepository create(Ref ref) {
    return produtoRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProdutoRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProdutoRepository>(value),
    );
  }
}

String _$produtoRepositoryHash() => r'47f70b06e85b0b68e386bbe7bf8f20f8b498ba5c';

@ProviderFor(insertProdutoUseCase)
final insertProdutoUseCaseProvider = InsertProdutoUseCaseProvider._();

final class InsertProdutoUseCaseProvider
    extends
        $FunctionalProvider<
          InsertProdutoUseCase,
          InsertProdutoUseCase,
          InsertProdutoUseCase
        >
    with $Provider<InsertProdutoUseCase> {
  InsertProdutoUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'insertProdutoUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$insertProdutoUseCaseHash();

  @$internal
  @override
  $ProviderElement<InsertProdutoUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  InsertProdutoUseCase create(Ref ref) {
    return insertProdutoUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(InsertProdutoUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<InsertProdutoUseCase>(value),
    );
  }
}

String _$insertProdutoUseCaseHash() =>
    r'262773b2fe735382a7110844656c975e4d2cee9d';

@ProviderFor(updateProdutoUseCase)
final updateProdutoUseCaseProvider = UpdateProdutoUseCaseProvider._();

final class UpdateProdutoUseCaseProvider
    extends
        $FunctionalProvider<
          UpdateProdutoUseCase,
          UpdateProdutoUseCase,
          UpdateProdutoUseCase
        >
    with $Provider<UpdateProdutoUseCase> {
  UpdateProdutoUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'updateProdutoUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$updateProdutoUseCaseHash();

  @$internal
  @override
  $ProviderElement<UpdateProdutoUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UpdateProdutoUseCase create(Ref ref) {
    return updateProdutoUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UpdateProdutoUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UpdateProdutoUseCase>(value),
    );
  }
}

String _$updateProdutoUseCaseHash() =>
    r'39749102621e15a6b5038c12287aea5c80e9ad57';

@ProviderFor(getOneProdutoUseCase)
final getOneProdutoUseCaseProvider = GetOneProdutoUseCaseProvider._();

final class GetOneProdutoUseCaseProvider
    extends
        $FunctionalProvider<
          GetOneProdutoUseCase,
          GetOneProdutoUseCase,
          GetOneProdutoUseCase
        >
    with $Provider<GetOneProdutoUseCase> {
  GetOneProdutoUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getOneProdutoUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getOneProdutoUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetOneProdutoUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetOneProdutoUseCase create(Ref ref) {
    return getOneProdutoUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetOneProdutoUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetOneProdutoUseCase>(value),
    );
  }
}

String _$getOneProdutoUseCaseHash() =>
    r'ce39119a386c5cc558262d443117284f8fe302cf';

@ProviderFor(deleteOneProdutoUseCase)
final deleteOneProdutoUseCaseProvider = DeleteOneProdutoUseCaseProvider._();

final class DeleteOneProdutoUseCaseProvider
    extends
        $FunctionalProvider<
          DeleteOneProdutoUseCase,
          DeleteOneProdutoUseCase,
          DeleteOneProdutoUseCase
        >
    with $Provider<DeleteOneProdutoUseCase> {
  DeleteOneProdutoUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'deleteOneProdutoUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$deleteOneProdutoUseCaseHash();

  @$internal
  @override
  $ProviderElement<DeleteOneProdutoUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DeleteOneProdutoUseCase create(Ref ref) {
    return deleteOneProdutoUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DeleteOneProdutoUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DeleteOneProdutoUseCase>(value),
    );
  }
}

String _$deleteOneProdutoUseCaseHash() =>
    r'e333e9d748ae8855b82ffc335ab6a29d85621494';

@ProviderFor(getAllProdutosUseCase)
final getAllProdutosUseCaseProvider = GetAllProdutosUseCaseProvider._();

final class GetAllProdutosUseCaseProvider
    extends
        $FunctionalProvider<
          GetAllProdutosUseCase,
          GetAllProdutosUseCase,
          GetAllProdutosUseCase
        >
    with $Provider<GetAllProdutosUseCase> {
  GetAllProdutosUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAllProdutosUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getAllProdutosUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetAllProdutosUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetAllProdutosUseCase create(Ref ref) {
    return getAllProdutosUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAllProdutosUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAllProdutosUseCase>(value),
    );
  }
}

String _$getAllProdutosUseCaseHash() =>
    r'1cbb42444573f6b179ec94010fa93279641406a2';
