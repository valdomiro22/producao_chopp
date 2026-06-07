import 'package:dartz/dartz.dart';
import '../entities/grade_entity.dart';
import '../repositories/grade_repository.dart';

import '../../../../core/error/failure.dart';

class GetOneGradeUseCase {
  final GradeRepository _repository;

  GetOneGradeUseCase(this._repository);

  Future<Either<Failure, GradeEntity>> call(String gradeId) async {
    if (gradeId.isEmpty) {
      return Left(UnknownFailure('ID da grade não pode estar vazio'));
    }

    final grade = await _repository.getOneById(gradeId);

    return grade.fold((failure) => Left(failure), (grade) {
      if (grade == null) return Left(DatabaseFailure('Grade não encontrada'));
      return Right(grade);
    });
  }
}
