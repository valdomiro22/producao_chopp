import 'package:producao_chopp/core/database/app_database_provider.dart';
import 'package:producao_chopp/features/barril/data/dao/barril_dao.dart';
import 'package:producao_chopp/features/barril/domain/repositories/barril_repository.dart';
import 'package:producao_chopp/features/barril/domain/usecases/delete_one_barril_use_case.dart';
import 'package:producao_chopp/features/barril/domain/usecases/get_all_barris_use_case.dart';
import 'package:producao_chopp/features/barril/domain/usecases/get_one_barril_use_case.dart';
import 'package:producao_chopp/features/barril/domain/usecases/insert_barril_use_case.dart';
import 'package:producao_chopp/features/barril/domain/usecases/update_barril_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/localdatasource/BarrilLocalDataSource.dart';
import '../data/localdatasource/BarrilLocalDataSourceImpl.dart';
import '../data/repositories/barrio_repository_impl.dart';

part 'barril_providers.g.dart';

@riverpod
BarrilDao barrilDao(Ref ref) {
  final db = ref.watch(appDatabaseProvider);
  return BarrilDao(db);
}

@riverpod
BarrilLocalDataSource barrilLocalDataSource(Ref ref) {
  final dao = ref.watch(barrilDaoProvider);
  return Barrillocaldatasourceimpl(dao);
}

@riverpod
BarrilRepository barrilRepository(Ref ref) {
  final dataSource = ref.watch(barrilLocalDataSourceProvider);
  return BarrioRepositoryImpl(dataSource);
}

// UseCases --------------------------------------------------------------------

@riverpod
InsertBarrilUseCase insertBarrilUseCase(Ref ref) {
  final repository = ref.watch(barrilRepositoryProvider);
  return InsertBarrilUseCase(repository);
}

@riverpod
UpdateBarrilUseCase updateBarrilUseCase(Ref ref) {
  final repository = ref.watch(barrilRepositoryProvider);
  return UpdateBarrilUseCase(repository);
}

@riverpod
GetOneBarrilUseCase getOneBarrilUseCase(Ref ref) {
  final repository = ref.watch(barrilRepositoryProvider);
  return GetOneBarrilUseCase(repository);
}

@riverpod
DeleteOneBarrilUseCase deleteOneBarrilUseCase(Ref ref) {
  final repository = ref.watch(barrilRepositoryProvider);
  return DeleteOneBarrilUseCase(repository);
}

@riverpod
GetAllBarrisUseCase getAllBarrisUseCase(Ref ref) {
  final repository = ref.watch(barrilRepositoryProvider);
  return GetAllBarrisUseCase(repository);
}
