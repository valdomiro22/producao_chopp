import 'package:dartz/dartz.dart';
import 'package:producao_chopp/core/error/app_database_exception.dart';

import '../../../../core/error/failure.dart';
import '../../domain/entities/produto_entity.dart';
import '../../domain/repositories/produto_repository.dart';
import '../localdatasource/produto_local_data_source.dart';
import '../mapper/produto_mapper.dart';

class ProdutoRepositoryImpl implements ProdutoRepository {
  final ProdutoLocalDataSource _dataSource;

  ProdutoRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, Unit>> delete(ProdutoEntity produto) async {
    try {
      final localModel = produto.toLocalModel();
      await _dataSource.delete(localModel);

      return const Right(unit);
    } on AppDatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (e) {
      return const Left(UnknownFailure('Erro inesperado ao deletar produto.'));
    }
  }

  @override
  Future<Either<Failure, List<ProdutoEntity>>> getAll() async {
    try {
      final localModels = await _dataSource.getAll();
      final entities = localModels.map((model) => model.toEntity()).toList();

      return Right(entities);
    } on AppDatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (e) {
      return const Left(UnknownFailure('Erro inesperado ao buscar produtos.'));
    }
  }

  @override
  Future<Either<Failure, ProdutoEntity?>> getOneById(String produtoId) async {
    try {
      final localModel = await _dataSource.getOneById(produtoId);

      return Right(localModel?.toEntity());
    } on AppDatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (_) {
      return const Left(UnknownFailure('Erro inesperado ao buscar produto.'));
    }
  }

  @override
  Future<Either<Failure, Unit>> insert(ProdutoEntity produto) async {
    try {
      final localModel = produto.toLocalModel();
      await _dataSource.insert(localModel);

      return const Right(unit);
    } on AppDatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (e) {
      return const Left(UnknownFailure('Erro inesperado ao salvar produto.'));
    }
  }

  @override
  Future<Either<Failure, Unit>> update(ProdutoEntity produto) async {
    try {
      final localModel = produto.toLocalModel();
      await _dataSource.update(localModel);

      return const Right(unit);
    } on AppDatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (e) {
      return const Left(UnknownFailure('Erro inesperado ao salvar produto.'));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateStatusSincronizacao({
    required String produtoId,
    required String statusSincronizacao,
  }) async {
    try {
      await _dataSource.updateStatusSincronizacao(
        produtoId: produtoId,
        statusSincronizacao: statusSincronizacao,
      );

      return const Right(unit);
    } on AppDatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (e) {
      return const Left(
        UnknownFailure('Erro inesperado atualizar statusDeSincronizacão salvar produto.'),
      );
    }
  }
}
