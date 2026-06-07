import 'package:dartz/dartz.dart';
import 'package:producao_chopp/core/error/app_database_exception.dart';

import '../../../../core/error/failure.dart';
import '../../domain/entities/grade_entity.dart';
import '../../domain/repositories/grade_repository.dart';
import '../localdatasource/grade_local_data_source.dart';
import '../mapper/grade_mapper.dart';

class GradeRepositoryImpl implements GradeRepository {
  final GradeLocalDataSource _dataSource;

  GradeRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, Unit>> delete(GradeEntity grade) async {
    try {
      final localModel = grade.toLocalModel();
      await _dataSource.delete(localModel);

      return const Right(unit);
    } on AppDatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (e) {
      return const Left(UnknownFailure('Erro inesperado ao deletar grade.'));
    }
  }

  @override
  Future<Either<Failure, List<GradeEntity>>> getAll() async {
    print('grade-repository: entrou em getAll');
    try {
      print('grade-repository: tentou buscar');
      final localModels = await _dataSource.getAll();
      print('grade-repository: buscou: ${localModels.length} grades');
      final entities = localModels.map((model) => model.toEntity()).toList();
      print('grade-repository: converteu para entity, entities: ${entities.length}');

      return Right(entities);
    } on AppDatabaseException catch (e) {
      print('grade-repository: deu erro no banco}');
      return Left(DatabaseFailure(e.message));
    } catch (e) {
      print('grade-repository: deu erro geral}');
      return const Left(UnknownFailure('Erro inesperado ao buscar grades.'));
    }
  }

  @override
  Future<Either<Failure, GradeEntity?>> getOneById(String gradeId) async {
    try {
      final localModel = await _dataSource.getOneById(gradeId);

      return Right(localModel?.toEntity());
    } on AppDatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (_) {
      return const Left(UnknownFailure('Erro inesperado ao buscar grade.'));
    }
  }

  @override
  Future<Either<Failure, Unit>> insert(GradeEntity grade) async {
    try {
      final localModel = grade.toLocalModel();
      await _dataSource.insert(localModel);

      return const Right(unit);
    } on AppDatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (e) {
      return const Left(UnknownFailure('Erro inesperado ao salvar grade.'));
    }
  }

  @override
  Future<Either<Failure, Unit>> update(GradeEntity grade) async {
    try {
      final localModel = grade.toLocalModel();
      await _dataSource.update(localModel);

      return const Right(unit);
    } on AppDatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (e) {
      return const Left(UnknownFailure('Erro inesperado ao salvar grade.'));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateStatusSincronizacao({
    required String gradeId,
    required String statusSincronizacao,
  }) async {
    try {
      await _dataSource.updateStatusSincronizacao(
        gradeId: gradeId,
        statusSincronizacao: statusSincronizacao,
      );

      return const Right(unit);
    } on AppDatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (e) {
      return const Left(
        UnknownFailure('Erro inesperado atualizar statusDeSincronizacão salvar grade.'),
      );
    }
  }
}
