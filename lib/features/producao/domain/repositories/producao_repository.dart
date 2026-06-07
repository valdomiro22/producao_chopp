import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/producao_entity.dart';

abstract class ProducaoRepository {
  Future<Either<Failure, Unit>> insert(ProducaoEntity producao);

  Future<Either<Failure, Unit>> update(ProducaoEntity producao);

  Future<Either<Failure, Unit>> delete(ProducaoEntity producao);

  Future<Either<Failure, List<ProducaoEntity>>> getAll();

  Future<Either<Failure, ProducaoEntity?>> getOneById(String producaoId);

  Future<Either<Failure, Unit>> updateStatusSincronizacao({
    required String producaoId,
    required String statusSincronizacao,
  });
}
