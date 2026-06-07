import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/grade_entity.dart';

abstract class GradeRepository {
  Future<Either<Failure, Unit>> insert(GradeEntity grade);

  Future<Either<Failure, Unit>> update(GradeEntity grade);

  Future<Either<Failure, Unit>> delete(GradeEntity grade);

  Future<Either<Failure, List<GradeEntity>>> getAll();

  Future<Either<Failure, GradeEntity?>> getOneById(String gradeId);

  Future<Either<Failure, Unit>> updateStatusSincronizacao({
    required String gradeId,
    required String statusSincronizacao,
  });
}
