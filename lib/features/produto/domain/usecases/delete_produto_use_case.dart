import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/produto_entity.dart';
import '../repositories/produto_repository.dart';

class DeleteOneProdutoUseCase {
  final ProdutoRepository _repository;

  DeleteOneProdutoUseCase(this._repository);

  Future<Either<Failure, Unit>> call(ProdutoEntity produto) async {
    if (produto.id.isEmpty) {
      return Left(UnknownFailure('ID do produto não pode estar vazio'));
    }

    return await _repository.delete(produto);
  }
}
