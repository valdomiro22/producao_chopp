import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/movimentacao_entity.dart';
import '../repositories/anotacao_repository.dart';

class GetOneAnotacaoUseCase {
  final AnotacaoRepository _repository;

  GetOneAnotacaoUseCase(this._repository);

  Future<Either<Failure, AnotacaoEntity>> call(String anotacaoId) async {
    final result = await _repository.getOneById(anotacaoId);
    return result.fold((failure) => Left(failure), (anotacao) {
      if (anotacao == null) return Left(DatabaseFailure('Anotação não encontrada'));
      return Right(anotacao);
    });
  }
}
