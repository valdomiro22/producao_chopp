import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/barril_entity.dart';
import '../repositories/barril_repository.dart';

class GetOneBarrilUseCase {
  final BarrilRepository _repository;

  GetOneBarrilUseCase(this._repository);

  Future<Either<Failure, BarrilEntity>> call(String barrilId) async {
    if (barrilId.isEmpty) {
      return Left(UnknownFailure('ID do barril não pode estar vazio'));
    }

    final barril = await _repository.getOneById(barrilId);

    return barril.fold((failure) => Left(failure), (barril) {
      if (barril == null) return Left(DatabaseFailure('Barril não encontrado'));
      return Right(barril);
    });
  }
}
