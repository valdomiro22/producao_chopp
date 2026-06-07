import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/producao_entity.dart';
import '../repositories/producao_repository.dart';

class DeleteOneProducaoUseCase {
  final ProducaoRepository _repository;

  DeleteOneProducaoUseCase(this._repository);

  Future<Either<Failure, Unit>> call(ProducaoEntity produtao) async {
    if (produtao.id.isEmpty) {
      return Left(UnknownFailure('ID da Produção não pode estar vazio'));
    }

    return await _repository.delete(produtao);
  }
}
