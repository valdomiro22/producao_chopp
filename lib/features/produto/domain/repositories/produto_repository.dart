import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/produto_entity.dart';

abstract class ProdutoRepository {
  Future<Either<Failure, Unit>> insert(ProdutoEntity produto);

  Future<Either<Failure, Unit>> update(ProdutoEntity produto);

  Future<Either<Failure, Unit>> delete(ProdutoEntity produto);

  Future<Either<Failure, List<ProdutoEntity>>> getAll();

  Future<Either<Failure, ProdutoEntity?>> getOneById(String produtoId);

  Future<Either<Failure, Unit>> updateStatusSincronizacao({
    required String produtoId,
    required String statusSincronizacao,
  });
}
