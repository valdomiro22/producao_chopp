import 'package:producao_chopp/core/database/app_database_provider.dart';
import 'package:producao_chopp/features/grade/data/dao/grade_dao.dart';
import 'package:producao_chopp/features/grade/data/localdatasource/grade_local_data_source_impl.dart';
import 'package:producao_chopp/features/grade/data/repositories/grade_repository_impl.dart';
import 'package:producao_chopp/features/grade/domain/repositories/grade_repository.dart';
import 'package:producao_chopp/features/grade/domain/usecases/get_all_grades_use_case.dart';
import 'package:producao_chopp/features/grade/domain/usecases/get_one_grade_use_case.dart';
import 'package:producao_chopp/features/grade/domain/usecases/insert_grade_use_case.dart';
import 'package:producao_chopp/features/grade/domain/usecases/update_grade_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/localdatasource/grade_local_data_source.dart';
import '../domain/usecases/delete_one_grade_use_case.dart';

part 'grade_providers.g.dart';

@riverpod
GradeDao gradeDao(Ref ref) {
  final db = ref.watch(appDatabaseProvider);
  return GradeDao(db);
}

@riverpod
GradeLocalDataSource gradeLocalDataSource(Ref ref) {
  final dao = ref.watch(gradeDaoProvider);
  return GradeLocalDataSourceImpl(dao);
}

@riverpod
GradeRepository gradeRepository(Ref ref) {
  final dataSource = ref.watch(gradeLocalDataSourceProvider);
  return GradeRepositoryImpl(dataSource);
}

// UseCases --------------------------------------------------------------------
@riverpod
InsertGradeUseCase insertGradeUseCase(Ref ref) {
  final repository = ref.watch(gradeRepositoryProvider);
  return InsertGradeUseCase(repository);
}

@riverpod
UpdateGradeUseCase updateGradeUseCase(Ref ref) {
  final repository = ref.watch(gradeRepositoryProvider);
  return UpdateGradeUseCase(repository);
}

@riverpod
GetOneGradeUseCase getOneGradeUseCase(Ref ref) {
  final repository = ref.watch(gradeRepositoryProvider);
  return GetOneGradeUseCase(repository);
}

@riverpod
DeleteOneGradeUseCase deleteOneGradeUseCase(Ref ref) {
  final repository = ref.watch(gradeRepositoryProvider);
  return DeleteOneGradeUseCase(repository);
}

@riverpod
GetAllGradesUseCase getAllGradesUseCase(Ref ref) {
  final repository = ref.watch(gradeRepositoryProvider);
  return GetAllGradesUseCase(repository);
}
