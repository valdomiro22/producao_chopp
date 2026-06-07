import 'package:dartz/dartz.dart';

import '../../../../core/enums/status_sincronizacao.dart';
import '../../../../core/error/failure.dart';
import '../entities/movimentacao_entity.dart';
import '../entities/tipo_movimentacao.dart';
import '../repositories/anotacao_repository.dart';

class UpdateAnotacaoUseCase {
  final AnotacaoRepository _repository;

  UpdateAnotacaoUseCase(this._repository);

  Future<Either<Failure, Unit>> call(UpdateAnotacaoParams params) async {
    if (params.id.isEmpty) {
      return Left(UnknownFailure('ID da movimentação não pode estar vazio.'));
    }

    if (params.quantidade == 0) return Left(UnknownFailure('Quantidade não pode ser zero.'));

    if (params.producaoId.isEmpty) {
      return Left(UnknownFailure('ID da produção não pode estar vazio.'));
    }

    if (params.producaoId.isEmpty) {
      return Left(UnknownFailure('Horário referente não pode estar vazio.'));
    }

    if (params.turnoId < 1 || params.turnoId > 3) {
      return Left(UnknownFailure('Turno inválido'));
    }

    final criadoEm = DateTime.now();
    final tipoAnotacao = params.quantidade > 0
        ? TipoAnotacao.soma
        : TipoAnotacao.subtracao;

    final anotacao = AnotacaoEntity(
      id: params.id,
      producaoId: params.producaoId,
      turnoId: params.turnoId,
      horarioReferente: params.horarioReferente,
      quantidade: params.quantidade,
      tipo: tipoAnotacao,
      criadoEm: criadoEm,
      statusSincronizacao: StatusSincronizacao.aguardandoEnvio,
    );

    return await _repository.insert(anotacao);
  }
}

class UpdateAnotacaoParams {
  final String id;
  final String producaoId;
  final int quantidade;
  final int turnoId;
  final String horarioReferente;

  UpdateAnotacaoParams({
    required this.id,
    required this.producaoId,
    required this.quantidade,
    required this.turnoId,
    required this.horarioReferente,
  });
}
