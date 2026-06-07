import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/produto_entity.dart';
import '../repositories/produto_repository.dart';

class GetOneProdutoUseCase {
  final ProdutoRepository _repository;

  GetOneProdutoUseCase(this._repository);

  Future<Either<Failure, ProdutoEntity>> call(String produtoId) async {
    if (produtoId.isEmpty) {
      return Left(UnknownFailure('ID do produto não pode estar vazio'));
    }

    final produto = await _repository.getOneById(produtoId);

    return produto.fold((failure) => Left(failure), (produto) {
      if (produto == null) return Left(DatabaseFailure('Produto não encontrado'));
      return Right(produto);
    });
  }
}
