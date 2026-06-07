import 'package:dartz/dartz.dart';
import 'package:producao_chopp/core/enums/status_producao.dart';

import '../../../../core/enums/status_sincronizacao.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/helper/producao_helper.dart';
import '../entities/producao_entity.dart';
import '../repositories/producao_repository.dart';

class UpdateProducaoUseCase {
  final ProducaoRepository _repository;

  UpdateProducaoUseCase(this._repository);

  Future<Either<Failure, Unit>> call(UpdateProducaoParams params) async {
    final barrilId = params.barrilId;
    final produtoId = params.produtoId;
    final volumeBarril = params.volumeBarril;
    final quantidadeProgramada = params.quantidadeProgramada;

    if (barrilId.isEmpty) return Left(UnknownFailure("Barril ID não pode ser vazio"));
    if (produtoId.isEmpty) return Left(UnknownFailure("Produto ID não pode ser vazio"));
    if (quantidadeProgramada <= 0) {
      return Left(UnknownFailure("Quantidade programada deve ser maior que zero"));
    }
    if (volumeBarril <= 0) {
      return Left(UnknownFailure("Volume do barril deve ser maior que zero"));
    }

    final editadaEm = DateTime.now();
    final volumeNecessario = ProducaoHelper.calcularVolumeNecessarioParaGrade(
      quantidadeDeBarris: quantidadeProgramada,
      volumeBarril: params.volumeBarril,
    );

    final producaoAtualizada = ProducaoEntity(
      produtoId: produtoId,
      barrilId: barrilId,
      editadoEm: editadaEm,
      dataInicioProducao: params.data,
      quantidadeProduzida: params.quantidadeProduzida,
      quantidadeProgramada: quantidadeProgramada,
      volumeNecessario: volumeNecessario,
      statusSincronizacao: StatusSincronizacao.aguardandoAtualizacao,
      id: params.id,
      gradeId: params.gradeId,
      status: params.status,
      criadoEm: params.criadoEm,
    );

    return await _repository.update(producaoAtualizada);
  }
}

class UpdateProducaoParams {
  final String id;
  final String produtoId;
  final String barrilId;
  final String gradeId;
  final DateTime data;
  final StatusProducao status;
  final DateTime criadoEm;
  final int quantidadeProgramada;
  final int quantidadeProduzida;
  final int volumeBarril;

  UpdateProducaoParams({
    required this.barrilId,
    required this.volumeBarril,
    required this.produtoId,
    required this.data,
    required this.quantidadeProgramada,
    this.quantidadeProduzida = 0,
    required this.id,
    required this.gradeId,
    required this.status,
    required this.criadoEm,
  });
}
