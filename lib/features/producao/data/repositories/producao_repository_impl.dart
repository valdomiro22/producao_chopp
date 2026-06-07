import 'package:dartz/dartz.dart';
import 'package:producao_chopp/core/error/app_database_exception.dart';

import '../../../../core/error/failure.dart';
import '../../domain/entities/producao_entity.dart';
import '../../domain/repositories/producao_repository.dart';
import '../localdatasource/producao_local_data_source.dart';
import '../mapper/producao_mapper.dart';

class ProducaoRepositoryImpl implements ProducaoRepository {
  final ProducaoLocalDataSource _dataSource;

  ProducaoRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, Unit>> delete(ProducaoEntity producao) async {
    try {
      final localModel = producao.toLocalModel();
      await _dataSource.delete(localModel);

      return const Right(unit);
    } on AppDatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (e) {
      return const Left(UnknownFailure('Erro inesperado ao deletar producao.'));
    }
  }

  @override
  Future<Either<Failure, List<ProducaoEntity>>> getAll() async {
    try {
      final localModels = await _dataSource.getAll();
      final entities = localModels.map((model) => model.toEntity()).toList();

      return Right(entities);
    } on AppDatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (e) {
      return const Left(UnknownFailure('Erro inesperado ao buscar grades.'));
    }
  }

  @override
  Future<Either<Failure, ProducaoEntity?>> getOneById(String producaoId) async {
    try {
      final localModel = await _dataSource.getOneById(producaoId);

      return Right(localModel?.toEntity());
    } on AppDatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (_) {
      return const Left(UnknownFailure('Erro inesperado ao buscar producao.'));
    }
  }

  @override
  Future<Either<Failure, Unit>> insert(ProducaoEntity producao) async {
    try {
      final localModel = producao.toLocalModel();
      await _dataSource.insert(localModel);

      return const Right(unit);
    } on AppDatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (e) {
      return const Left(UnknownFailure('Erro inesperado ao salvar producao.'));
    }
  }

  @override
  Future<Either<Failure, Unit>> update(ProducaoEntity producao) async {
    try {
      final localModel = producao.toLocalModel();
      await _dataSource.update(localModel);

      return const Right(unit);
    } on AppDatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (e) {
      return const Left(UnknownFailure('Erro inesperado ao salvar producao.'));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateStatusSincronizacao({
    required String producaoId,
    required String statusSincronizacao,
  }) async {
    try {
      await _dataSource.updateStatusSincronizacao(
        producaoId: producaoId,
        statusSincronizacao: statusSincronizacao,
      );

      return const Right(unit);
    } on AppDatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (e) {
      return const Left(
        UnknownFailure('Erro inesperado atualizar statusDeSincronizacão salvar producao.'),
      );
    }
  }
}
