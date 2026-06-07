import 'package:dartz/dartz.dart';
import 'package:producao_chopp/core/error/app_database_exception.dart';

import '../../../../core/error/failure.dart';
import '../../domain/entities/movimentacao_entity.dart';
import '../../domain/repositories/anotacao_repository.dart';
import '../localdatasource/anotacao_local_data_source.dart';
import '../mapper/anotacao_mapper.dart';

class AnotacaoRepositoryImpl implements AnotacaoRepository {
  final AnotacaoLocalDataSource _dataSource;

  AnotacaoRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, Unit>> delete(AnotacaoEntity anotacao) async {
    try {
      final localModel = anotacao.toLocalModel();
      await _dataSource.delete(localModel);

      return const Right(unit);
    } on AppDatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (e) {
      return const Left(UnknownFailure('Erro inesperado ao deletar anotacao.'));
    }
  }

  @override
  Future<Either<Failure, List<AnotacaoEntity>>> getAllAnotacoesOfProducao(String producaoId) async {
    try {
      final localModels = await _dataSource.getAllAnotacoesOfProducao(producaoId);
      final entities = localModels.map((model) => model.toEntity()).toList();

      return Right(entities);
    } on AppDatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (e) {
      return const Left(UnknownFailure('Erro inesperado ao buscar movimentações.'));
    }
  }

  @override
  Future<Either<Failure, AnotacaoEntity?>> getOneById(String anotacaoId) async {
    try {
      final localModel = await _dataSource.getOneById(anotacaoId);

      return Right(localModel?.toEntity());
    } on AppDatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (_) {
      return const Left(UnknownFailure('Erro inesperado ao buscar anotacao.'));
    }
  }

  @override
  Future<Either<Failure, Unit>> insert(AnotacaoEntity anotacao) async {
    try {
      final localModel = anotacao.toLocalModel();
      await _dataSource.insert(localModel);

      return const Right(unit);
    } on AppDatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (e) {
      return const Left(UnknownFailure('Erro inesperado ao salvar anotacao.'));
    }
  }

  @override
  Future<Either<Failure, Unit>> update(AnotacaoEntity anotacao) async {
    try {
      final localModel = anotacao.toLocalModel();
      await _dataSource.update(localModel);

      return const Right(unit);
    } on AppDatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (e) {
      return const Left(UnknownFailure('Erro inesperado ao salvar anotacao.'));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateStatusSincronizacao({
    required String anotacaoId,
    required String statusSincronizacao,
  }) async {
    try {
      await _dataSource.updateStatusSincronizacao(
        anotacaoId: anotacaoId,
        statusSincronizacao: statusSincronizacao,
      );

      return const Right(unit);
    } on AppDatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (e) {
      return const Left(
        UnknownFailure('Erro inesperado atualizar statusDeSincronizacão salvar anotacao.'),
      );
    }
  }

  @override
  Future<Either<Failure, List<AnotacaoEntity>>> getAllAnotacoesOfHorario({
    required String producaoId,
    required String horarioReferente,
  }) async {
  try {
  final localModels = await _dataSource.getAllAnotacoesOfHorario(
  producaoId: producaoId,
  horarioReferente: horarioReferente,
  );
  final entities = localModels.map((model) => model.toEntity()).toList();

  return Right(entities);
  } on AppDatabaseException catch (e) {
  return Left(DatabaseFailure(e.message));
  } catch (e) {
  return const Left(UnknownFailure('Erro inesperado ao buscar movimentações do horário.'));
  }
  }

}
