import 'package:dartz/dartz.dart';

import '../../../../core/enums/status_sincronizacao.dart';
import '../../../../core/error/failure.dart';
import '../entities/grade_entity.dart';
import '../repositories/grade_repository.dart';

class UpdateGradeUseCase {
  final GradeRepository _repository;

  UpdateGradeUseCase(this._repository);

  Future<Either<Failure, Unit>> call(UpdateGradeParams params) async {
    final numero = params.numero;

    if (numero.isEmpty) return Left(UnknownFailure('O numero da grade não pode estar vazio'));

    final editadoEm = DateTime.now();

    final produto = GradeEntity(
      id: params.id,
      numero: numero,
      data: params.data,
      criadoEm: params.criadoEm,
      editadoEm: editadoEm,
      statusSincronizacao: StatusSincronizacao.aguardandoAtualizacao,
      quantidadeBarris: params.quantidadeBarris,
      volumeHlNecessario: params.volumeHlNecessario,
    );

    return await _repository.update(produto);
  }
}

class UpdateGradeParams {
  final String id;
  final String numero;
  final int quantidadeBarris;
  final double volumeHlNecessario;
  final DateTime data;
  final DateTime criadoEm;

  UpdateGradeParams({
    required this.id,
    required this.numero,
    required this.data,
    required this.criadoEm,
    this.quantidadeBarris = 0,
    this.volumeHlNecessario = 0.0,
  });
}
