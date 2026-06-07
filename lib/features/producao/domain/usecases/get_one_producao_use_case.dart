import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/producao_entity.dart';
import '../repositories/producao_repository.dart';

class GetOneProducaoUseCase {
  final ProducaoRepository _repository;

  GetOneProducaoUseCase(this._repository);

  Future<Either<Failure, ProducaoEntity>> call(String producaoId) async {
    if (producaoId.isEmpty) {
      return Left(UnknownFailure('ID da producao não pode estar vazio'));
    }

    final producao = await _repository.getOneById(producaoId);

    return producao.fold((failure) => Left(failure), (producao) {
      if (producao == null) return Left(DatabaseFailure('Produção não encontrada'));
      return Right(producao);
    });
  }
}
