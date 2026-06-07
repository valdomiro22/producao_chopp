import 'package:producao_chopp/core/database/app_database_provider.dart';
import 'package:producao_chopp/features/barril/providers/barril_providers.dart';
import 'package:producao_chopp/features/producao/data/dao/producao_dao.dart';
import 'package:producao_chopp/features/producao/data/localdatasource/producao_local_data_source_impl.dart';
import 'package:producao_chopp/features/producao/data/repositories/producao_repository_impl.dart';
import 'package:producao_chopp/features/producao/domain/repositories/producao_repository.dart';
import 'package:producao_chopp/features/producao/domain/usecases/get_one_producao_use_case.dart';
import 'package:producao_chopp/features/producao/domain/usecases/get_producao_detalhada_use_case.dart';
import 'package:producao_chopp/features/producao/domain/usecases/get_producao_detalhada_use_case.dart';
import 'package:producao_chopp/features/producao/domain/usecases/insert_producao_use_case.dart';
import 'package:producao_chopp/features/producao/domain/usecases/update_producao_use_case.dart';
import 'package:producao_chopp/features/produto/providers/produto_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/localdatasource/producao_local_data_source.dart';
import '../domain/usecases/delete_one_producao_use_case.dart';
import '../domain/usecases/get_all_producoes_use_case.dart';

part 'producao_providers.g.dart';

@riverpod
ProducaoDao producaoDao(Ref ref) {
  final db = ref.watch(appDatabaseProvider);
  return ProducaoDao(db);
}

@riverpod
ProducaoLocalDataSource producaoLocalDataSource(Ref ref) {
  final dao = ref.watch(producaoDaoProvider);
  return ProducaoLocalDataSourceImpl(dao);
}

@riverpod
ProducaoRepository producaoRepository(Ref ref) {
  final dataSource = ref.watch(producaoLocalDataSourceProvider);
  return ProducaoRepositoryImpl(dataSource);
}

// UseCases --------------------------------------------------------------------
@riverpod
InsertProducaoUseCase insertProducaoUseCase(Ref ref) {
  final repository = ref.watch(producaoRepositoryProvider);
  return InsertProducaoUseCase(repository);
}

@riverpod
UpdateProducaoUseCase updateProducaoUseCase(Ref ref) {
  final repository = ref.watch(producaoRepositoryProvider);
  return UpdateProducaoUseCase(repository);
}

@riverpod
GetOneProducaoUseCase getOneProducaoUseCase(Ref ref) {
  final repository = ref.watch(producaoRepositoryProvider);
  return GetOneProducaoUseCase(repository);
}

@riverpod
GetProducaoDetalhadaUseCase getProducaoDetalhada(Ref ref) {
  final producaoRepository = ref.watch(producaoRepositoryProvider);
  final barrilRepository = ref.watch(barrilRepositoryProvider);
  final produtoRepository = ref.watch(produtoRepositoryProvider);
  return GetProducaoDetalhadaUseCase(producaoRepository, barrilRepository, produtoRepository);
}

@riverpod
DeleteOneProducaoUseCase deleteOneProducaoUseCase(Ref ref) {
  final repository = ref.watch(producaoRepositoryProvider);
  return DeleteOneProducaoUseCase(repository);
}

@riverpod
GetAllProducoesUseCase getAllProducoesUseCase(Ref ref) {
  final repository = ref.watch(producaoRepositoryProvider);
  return GetAllProducoesUseCase(repository);
}
