import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/produto_entity.dart';
import '../repositories/produto_repository.dart';

class GetAllProdutosUseCase {
  final ProdutoRepository _repository;

  GetAllProdutosUseCase(this._repository);

  Future<Either<Failure, List<ProdutoEntity>>> call() async {
    return await _repository.getAll();
  }
}
