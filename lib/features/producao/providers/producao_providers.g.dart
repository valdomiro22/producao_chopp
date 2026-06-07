// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'producao_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(producaoDao)
final producaoDaoProvider = ProducaoDaoProvider._();

final class ProducaoDaoProvider
    extends $FunctionalProvider<ProducaoDao, ProducaoDao, ProducaoDao>
    with $Provider<ProducaoDao> {
  ProducaoDaoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'producaoDaoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$producaoDaoHash();

  @$internal
  @override
  $ProviderElement<ProducaoDao> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ProducaoDao create(Ref ref) {
    return producaoDao(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProducaoDao value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProducaoDao>(value),
    );
  }
}

String _$producaoDaoHash() => r'e4ac17a5ce36f3cc02b99f9ebde71645184aa988';

@ProviderFor(producaoLocalDataSource)
final producaoLocalDataSourceProvider = ProducaoLocalDataSourceProvider._();

final class ProducaoLocalDataSourceProvider
    extends
        $FunctionalProvider<
          ProducaoLocalDataSource,
          ProducaoLocalDataSource,
          ProducaoLocalDataSource
        >
    with $Provider<ProducaoLocalDataSource> {
  ProducaoLocalDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'producaoLocalDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$producaoLocalDataSourceHash();

  @$internal
  @override
  $ProviderElement<ProducaoLocalDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ProducaoLocalDataSource create(Ref ref) {
    return producaoLocalDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProducaoLocalDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProducaoLocalDataSource>(value),
    );
  }
}

String _$producaoLocalDataSourceHash() =>
    r'2f8c8e0fc2a318e6919b910c648bd75557b43424';

@ProviderFor(producaoRepository)
final producaoRepositoryProvider = ProducaoRepositoryProvider._();

final class ProducaoRepositoryProvider
    extends
        $FunctionalProvider<
          ProducaoRepository,
          ProducaoRepository,
          ProducaoRepository
        >
    with $Provider<ProducaoRepository> {
  ProducaoRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'producaoRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$producaoRepositoryHash();

  @$internal
  @override
  $ProviderElement<ProducaoRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ProducaoRepository create(Ref ref) {
    return producaoRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProducaoRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProducaoRepository>(value),
    );
  }
}

String _$producaoRepositoryHash() =>
    r'27879c9268da776761db249e0c9488d7f6e52d2d';

@ProviderFor(insertProducaoUseCase)
final insertProducaoUseCaseProvider = InsertProducaoUseCaseProvider._();

final class InsertProducaoUseCaseProvider
    extends
        $FunctionalProvider<
          InsertProducaoUseCase,
          InsertProducaoUseCase,
          InsertProducaoUseCase
        >
    with $Provider<InsertProducaoUseCase> {
  InsertProducaoUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'insertProducaoUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$insertProducaoUseCaseHash();

  @$internal
  @override
  $ProviderElement<InsertProducaoUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  InsertProducaoUseCase create(Ref ref) {
    return insertProducaoUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(InsertProducaoUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<InsertProducaoUseCase>(value),
    );
  }
}

String _$insertProducaoUseCaseHash() =>
    r'ece4371c129ef1aab0bde27fe238e23e07a15bc1';

@ProviderFor(updateProducaoUseCase)
final updateProducaoUseCaseProvider = UpdateProducaoUseCaseProvider._();

final class UpdateProducaoUseCaseProvider
    extends
        $FunctionalProvider<
          UpdateProducaoUseCase,
          UpdateProducaoUseCase,
          UpdateProducaoUseCase
        >
    with $Provider<UpdateProducaoUseCase> {
  UpdateProducaoUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'updateProducaoUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$updateProducaoUseCaseHash();

  @$internal
  @override
  $ProviderElement<UpdateProducaoUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UpdateProducaoUseCase create(Ref ref) {
    return updateProducaoUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UpdateProducaoUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UpdateProducaoUseCase>(value),
    );
  }
}

String _$updateProducaoUseCaseHash() =>
    r'c22b278eea734396e5fb72ac8824231259a53583';

@ProviderFor(getOneProducaoUseCase)
final getOneProducaoUseCaseProvider = GetOneProducaoUseCaseProvider._();

final class GetOneProducaoUseCaseProvider
    extends
        $FunctionalProvider<
          GetOneProducaoUseCase,
          GetOneProducaoUseCase,
          GetOneProducaoUseCase
        >
    with $Provider<GetOneProducaoUseCase> {
  GetOneProducaoUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getOneProducaoUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getOneProducaoUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetOneProducaoUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetOneProducaoUseCase create(Ref ref) {
    return getOneProducaoUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetOneProducaoUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetOneProducaoUseCase>(value),
    );
  }
}

String _$getOneProducaoUseCaseHash() =>
    r'd0d37453418000e31972d8d6f9990719f2557791';

@ProviderFor(getProducaoDetalhada)
final getProducaoDetalhadaProvider = GetProducaoDetalhadaProvider._();

final class GetProducaoDetalhadaProvider
    extends
        $FunctionalProvider<
          GetProducaoDetalhadaUseCase,
          GetProducaoDetalhadaUseCase,
          GetProducaoDetalhadaUseCase
        >
    with $Provider<GetProducaoDetalhadaUseCase> {
  GetProducaoDetalhadaProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getProducaoDetalhadaProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getProducaoDetalhadaHash();

  @$internal
  @override
  $ProviderElement<GetProducaoDetalhadaUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetProducaoDetalhadaUseCase create(Ref ref) {
    return getProducaoDetalhada(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetProducaoDetalhadaUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetProducaoDetalhadaUseCase>(value),
    );
  }
}

String _$getProducaoDetalhadaHash() =>
    r'6353d166f446d4e298b9b9252db5684c7cc792ee';

@ProviderFor(deleteOneProducaoUseCase)
final deleteOneProducaoUseCaseProvider = DeleteOneProducaoUseCaseProvider._();

final class DeleteOneProducaoUseCaseProvider
    extends
        $FunctionalProvider<
          DeleteOneProducaoUseCase,
          DeleteOneProducaoUseCase,
          DeleteOneProducaoUseCase
        >
    with $Provider<DeleteOneProducaoUseCase> {
  DeleteOneProducaoUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'deleteOneProducaoUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$deleteOneProducaoUseCaseHash();

  @$internal
  @override
  $ProviderElement<DeleteOneProducaoUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DeleteOneProducaoUseCase create(Ref ref) {
    return deleteOneProducaoUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DeleteOneProducaoUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DeleteOneProducaoUseCase>(value),
    );
  }
}

String _$deleteOneProducaoUseCaseHash() =>
    r'a4d65e1258009c6ccee128dc8755bf50b1c32d73';

@ProviderFor(getAllProducoesUseCase)
final getAllProducoesUseCaseProvider = GetAllProducoesUseCaseProvider._();

final class GetAllProducoesUseCaseProvider
    extends
        $FunctionalProvider<
          GetAllProducoesUseCase,
          GetAllProducoesUseCase,
          GetAllProducoesUseCase
        >
    with $Provider<GetAllProducoesUseCase> {
  GetAllProducoesUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAllProducoesUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getAllProducoesUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetAllProducoesUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetAllProducoesUseCase create(Ref ref) {
    return getAllProducoesUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAllProducoesUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAllProducoesUseCase>(value),
    );
  }
}

String _$getAllProducoesUseCaseHash() =>
    r'9389d6219ffc5e949eca2f2d7aa967750067ed7e';
