import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/grade_entity.dart';
import '../repositories/grade_repository.dart';

class DeleteOneGradeUseCase {
  final GradeRepository _repository;

  DeleteOneGradeUseCase(this._repository);

  Future<Either<Failure, Unit>> call(GradeEntity grade) async {
    if (grade.id.isEmpty) {
      return Left(UnknownFailure('ID da grade não pode estar vazio'));
    }

    return await _repository.delete(grade);
  }
}
