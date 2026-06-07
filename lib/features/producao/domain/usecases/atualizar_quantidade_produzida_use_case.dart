import 'package:dartz/dartz.dart';

import '../../../../core/enums/status_producao.dart';
import '../../../../core/enums/status_sincronizacao.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/helper/producao_helper.dart';
import '../entities/producao_entity.dart';
import '../repositories/producao_repository.dart';

class AtualizarQuantidadeProduzidaUseCase {
  final ProducaoRepository _repository;

  AtualizarQuantidadeProduzidaUseCase(this._repository);

  Future<Either<Failure, Unit>> call(
    int quantidade,
    ProducaoEntity producao,
    int volumeBarril,
  ) async {
    if (quantidade == 0) return Left(UnknownFailure('A quantidade inserida não pode ser zero'));

    final novaQuantidadeTotal = producao.quantidadeProduzida + quantidade;
    final novoVolume = ProducaoHelper.calcularVolumeNecessario(
      quantidadeProgramada: producao.quantidadeProgramada,
      quantidadeProduzida: producao.quantidadeProduzida,
      volumeBarril: volumeBarril,
    );

    final novoStatus = novaQuantidadeTotal == producao.quantidadeProgramada
        ? StatusProducao.concluida
        : StatusProducao.emProducao;

    final producaoAtualizada = producao.copyWith(
      quantidadeProduzida: novaQuantidadeTotal,
      volumeNecessario: novoVolume,
      status: novoStatus,
      editadoEm: DateTime.now(),
      statusSincronizacao: StatusSincronizacao.aguardandoAtualizacao,
    );

    return await _repository.update(producaoAtualizada);
  }
}
