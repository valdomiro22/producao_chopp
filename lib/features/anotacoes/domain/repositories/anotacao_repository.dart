import 'package:dartz/dartz.dart';
import 'package:producao_chopp/features/anotacoes/domain/entities/movimentacao_entity.dart';

import '../../../../core/error/failure.dart';

abstract class AnotacaoRepository {
  Future<Either<Failure, Unit>> insert(AnotacaoEntity anotacao);

  Future<Either<Failure, Unit>> update(AnotacaoEntity anotacao);

  Future<Either<Failure, Unit>> delete(AnotacaoEntity anotacao);

  Future<Either<Failure, List<AnotacaoEntity>>> getAllAnotacoesOfProducao(String anotacaoId);

  Future<Either<Failure, AnotacaoEntity?>> getOneById(String anotacaoId);

  Future<Either<Failure, Unit>> updateStatusSincronizacao({
    required String anotacaoId,
    required String statusSincronizacao,
  });

  Future<Either<Failure, List<AnotacaoEntity>>> getAllAnotacoesOfHorario({
    required String producaoId,
    required String horarioReferente,
  });
}
