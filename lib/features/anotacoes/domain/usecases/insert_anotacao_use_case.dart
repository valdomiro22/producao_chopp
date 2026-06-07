import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/enums/status_sincronizacao.dart';
import '../../../../core/error/failure.dart';
import '../entities/movimentacao_entity.dart';
import '../entities/tipo_movimentacao.dart';
import '../repositories/anotacao_repository.dart';

class InsertAnotacaoUseCase {
  final AnotacaoRepository _repository;

  InsertAnotacaoUseCase(this._repository);

  Future<Either<Failure, Unit>> call(InsertAnotacaoParams params) async {
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

    final idGerado = const Uuid().v4();
    final criadoEm = DateTime.now();
    final tipoAnotacao = params.quantidade > 0
        ? TipoAnotacao.soma
        : TipoAnotacao.subtracao;

    final anotacao = AnotacaoEntity(
      id: idGerado,
      producaoId: params.producaoId,
      turnoId: params.turnoId,
      horarioReferente: params.horarioReferente,
      quantidade: params.quantidade,
      tipo: tipoAnotacao,
      criadoEm: criadoEm,
      statusSincronizacao: StatusSincronizacao.aguardandoEnvio,
    );

    print('Anotacao inserida: ${anotacao.toString()}');

    return await _repository.insert(anotacao);
  }
}

class InsertAnotacaoParams {
  final String producaoId;
  final int quantidade;
  final int turnoId;
  final String horarioReferente;

  InsertAnotacaoParams({
    required this.producaoId,
    required this.quantidade,
    required this.turnoId,
    required this.horarioReferente,
  });
}
