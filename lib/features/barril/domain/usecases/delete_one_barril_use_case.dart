import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/barril_entity.dart';
import '../repositories/barril_repository.dart';

class DeleteOneBarrilUseCase {
  final BarrilRepository _repository;

  DeleteOneBarrilUseCase(this._repository);

  Future<Either<Failure, Unit>> call(BarrilEntity barril) async {
    if (barril.id.isEmpty) {
      return Left(UnknownFailure('ID do barril não pode estar vazio'));
    }

    return await _repository.delete(barril);
  }
}
