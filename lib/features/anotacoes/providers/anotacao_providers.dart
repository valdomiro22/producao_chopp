import 'package:producao_chopp/features/anotacoes/data/dao/anotacao_dao.dart';
import 'package:producao_chopp/features/anotacoes/data/localdatasource/anotacao_local_data_source_impl.dart';
import 'package:producao_chopp/features/anotacoes/data/repositories/anotacao_repository_impl.dart';
import 'package:producao_chopp/features/anotacoes/domain/usecases/get_all_anotacoes_of_horario_use_case.dart';
import 'package:producao_chopp/features/anotacoes/domain/usecases/get_all_anotacoes_of_horario_use_case.dart';
import 'package:producao_chopp/features/anotacoes/domain/usecases/get_all_anotacoes_of_producao_use_case.dart';
import 'package:producao_chopp/features/anotacoes/domain/usecases/get_saldo_anotacoes_of_horario_use_case.dart';
import 'package:producao_chopp/features/anotacoes/domain/usecases/get_saldo_anotacoes_of_horario_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/database/app_database_provider.dart';
import '../data/localdatasource/anotacao_local_data_source.dart';
import '../domain/repositories/anotacao_repository.dart';
import '../domain/usecases/delete_one_anotacao_use_case.dart';
import '../domain/usecases/get_one_anotacao_use_case.dart';
import '../domain/usecases/insert_anotacao_use_case.dart';
import '../domain/usecases/update_anotacao_use_case.dart';

part 'anotacao_providers.g.dart';

@riverpod
AnotacaoDao anotacaoDao(Ref ref) {
  final db = ref.watch(appDatabaseProvider);
  return AnotacaoDao(db);
}

@riverpod
AnotacaoLocalDataSource anotacaoLocalDataSource(Ref ref) {
  final dao = ref.watch(anotacaoDaoProvider);
  return AnotacaoLocalDataSourceImpl(dao);
}

@riverpod
AnotacaoRepository anotacaoRepository(Ref ref) {
  final dataSource = ref.watch(anotacaoLocalDataSourceProvider);
  return AnotacaoRepositoryImpl(dataSource);
}

// UseCases --------------------------------------------------------------------
@riverpod
InsertAnotacaoUseCase insertAnotacaoUseCase(Ref ref) {
  final repository = ref.watch(anotacaoRepositoryProvider);
  return InsertAnotacaoUseCase(repository);
}

@riverpod
UpdateAnotacaoUseCase updateAnotacaoUseCase(Ref ref) {
  final repository = ref.watch(anotacaoRepositoryProvider);
  return UpdateAnotacaoUseCase(repository);
}

@riverpod
GetOneAnotacaoUseCase getOneAnotacaoUseCase(Ref ref) {
  final repository = ref.watch(anotacaoRepositoryProvider);
  return GetOneAnotacaoUseCase(repository);
}

@riverpod
DeleteOneAnotacaoUseCase deleteOneAnotacaoUseCase(Ref ref) {
  final repository = ref.watch(anotacaoRepositoryProvider);
  return DeleteOneAnotacaoUseCase(repository);
}

@riverpod
GetAllAnotacoesOfProducaoUseCase getAllAnotacoesOfProducaoUseCase(Ref ref) {
  final repository = ref.watch(anotacaoRepositoryProvider);
  return GetAllAnotacoesOfProducaoUseCase(repository);
}

@riverpod
GetAllAnotacoesOfHorarioUseCase getAllAnotacoesOfHorarioUseCase(Ref ref) {
  final repository = ref.watch(anotacaoRepositoryProvider);
  return GetAllAnotacoesOfHorarioUseCase(repository);
}

@riverpod
GetSaldoAnotacoesOfHorarioUseCase getSaldoAnotacoesOfHorarioUseCase(Ref ref) {
  final repository = ref.watch(anotacaoRepositoryProvider);
  return GetSaldoAnotacoesOfHorarioUseCase(repository);
}
