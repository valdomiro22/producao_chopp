import 'package:dartz/dartz.dart';
import 'package:producao_chopp/core/error/app_database_exception.dart';

import '../../../../core/error/failure.dart';
import '../../domain/entities/barril_entity.dart';
import '../../domain/repositories/barril_repository.dart';
import '../localdatasource/BarrilLocalDataSource.dart';
import '../mapper/barril_mapper.dart';

class BarrioRepositoryImpl implements BarrilRepository {
  final BarrilLocalDataSource _datasource;

  BarrioRepositoryImpl(this._datasource);

  @override
  Future<Either<Failure, Unit>> delete(BarrilEntity barril) async {
    try {
      final localModel = barril.toLocalModel();
      await _datasource.delete(localModel);

      return const Right(unit);
    } on AppDatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (e) {
      return const Left(UnknownFailure('Erro inesperado ao deletar barril.'));
    }
  }

  @override
  Future<Either<Failure, List<BarrilEntity>>> getAll() async {
    try {
      final localModels = await _datasource.getAll();
      final entities = localModels.map((model) => model.toEntity()).toList();

      return Right(entities);
    } on AppDatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (e) {
      return const Left(UnknownFailure('Erro inesperado ao buscar barris.'));
    }
  }

  @override
  Future<Either<Failure, BarrilEntity?>> getOneById(String barrilId) async {
    try {
      final localModel = await _datasource.getOneById(barrilId);

      return Right(localModel?.toEntity());
    } on AppDatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (_) {
      return const Left(UnknownFailure('Erro inesperado ao buscar barril.'));
    }
  }

  @override
  Future<Either<Failure, Unit>> insert(BarrilEntity barril) async {
    try {
      final localModel = barril.toLocalModel();
      await _datasource.insert(localModel);

      return const Right(unit);
    } on AppDatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (e) {
      return const Left(UnknownFailure('Erro inesperado ao salvar barril.'));
    }
  }

  @override
  Future<Either<Failure, Unit>> update(BarrilEntity barril) async {
    try {
      final localModel = barril.toLocalModel();
      await _datasource.update(localModel);

      return const Right(unit);
    } on AppDatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (e) {
      return const Left(UnknownFailure('Erro inesperado ao salvar barril.'));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateStatusSincronizacao({
    required String barrilId,
    required String statusSincronizacao,
  }) async {
    try {
      await _datasource.updateStatusSincronizacao(
        barrilId: barrilId,
        statusSincronizacao: statusSincronizacao,
      );

      return const Right(unit);
    } on AppDatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (e) {
      return const Left(
        UnknownFailure('Erro inesperado atualizar statusDeSincronizacão salvar barril.'),
      );
    }
  }
}
