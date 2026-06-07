import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/barril_entity.dart';

abstract class BarrilRepository {
  Future<Either<Failure, Unit>> insert(BarrilEntity barril);

  Future<Either<Failure, Unit>> update(BarrilEntity barril);

  Future<Either<Failure, Unit>> delete(BarrilEntity barril);

  Future<Either<Failure, List<BarrilEntity>>> getAll();

  Future<Either<Failure, BarrilEntity?>> getOneById(String barrilId);

  Future<Either<Failure, Unit>> updateStatusSincronizacao({
    required String barrilId,
    required String statusSincronizacao,
  });
}
