import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/enums/status_producao.dart';
import '../../../../core/enums/status_sincronizacao.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/helper/producao_helper.dart';
import '../entities/producao_entity.dart';
import '../repositories/producao_repository.dart';

class InsertProducaoUseCase {
  final ProducaoRepository _repository;

  InsertProducaoUseCase(this._repository);

  Future<Either<Failure, Unit>> call(InsertProducaoParams params) async {
    final gradeId = params.gradeId;
    final barrilId = params.barrilId;
    final produtoId = params.produtoId;
    final volumeBarril = params.volumeBarril;
    final quantidadeProgramada = params.quantidadeProgramada;

    if (gradeId.isEmpty) return Left(UnknownFailure("Grade ID não pode ser vazio"));
    if (barrilId.isEmpty) return Left(UnknownFailure("Barril ID não pode ser vazio"));
    if (produtoId.isEmpty) return Left(UnknownFailure("Produto ID não pode ser vazio"));
    if (quantidadeProgramada <= 0) {
      return Left(UnknownFailure("Quantidade programada deve ser maior que zero"));
    }
    if (volumeBarril <= 0) {
      return Left(UnknownFailure("Volume do barril deve ser maior que zero"));
    }

    final criadoEm = DateTime.now();
    final idGerado = const Uuid().v4();
    final volumeNecessario = ProducaoHelper.calcularVolumeNecessarioParaGrade(
      quantidadeDeBarris: quantidadeProgramada,
      volumeBarril: params.volumeBarril,
    );

    final producao = ProducaoEntity(
      id: idGerado,
      status: StatusProducao.pendente,
      barrilId: params.barrilId,
      produtoId: params.produtoId,
      quantidadeProgramada: params.quantidadeProgramada,
      quantidadeProduzida: params.quantidadeProduzida,
      dataInicioProducao: params.dataInicioProducao,
      criadoEm: criadoEm,
      statusSincronizacao: StatusSincronizacao.aguardandoEnvio,
      gradeId: params.gradeId,
      volumeNecessario: volumeNecessario,
    );

    print('useCase -> enviou para o repository');
    return await _repository.insert(producao);
  }
}

class InsertProducaoParams {
  final String produtoId;
  final String barrilId;
  final String gradeId;
  final DateTime dataInicioProducao;
  final int quantidadeProgramada;
  final int quantidadeProduzida;
  final int volumeBarril;

  InsertProducaoParams({
    required this.barrilId,
    required this.volumeBarril,
    required this.produtoId,
    required this.dataInicioProducao,
    required this.gradeId,
    required this.quantidadeProgramada,
    this.quantidadeProduzida = 0,
  });
}
