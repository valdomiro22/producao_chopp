import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/enums/status_sincronizacao.dart';
import '../../../../core/error/failure.dart';
import '../entities/grade_entity.dart';
import '../repositories/grade_repository.dart';

class InsertGradeUseCase {
  final GradeRepository _repository;

  InsertGradeUseCase(this._repository);

  Future<Either<Failure, Unit>> call(InsertGradeParams params) async {
    final numero = params.numero;

    if (numero.isEmpty) return Left(UnknownFailure('O numero da grade não pode estar vazio'));

    final idGerado = const Uuid().v4();
    final criadoEm = DateTime.now();

    final produto = GradeEntity(
      id: idGerado,
      numero: numero,
      data: params.data,
      criadoEm: criadoEm,
      quantidadeBarris: 0,
      volumeHlNecessario: 0.0,
      statusSincronizacao: StatusSincronizacao.aguardandoEnvio,
    );

    return await _repository.insert(produto);
  }
}

class InsertGradeParams {
  final String numero;
  final DateTime data;

  InsertGradeParams({required this.numero, required this.data});
}
