import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/enums/status_sincronizacao.dart';
import '../../../../core/error/failure.dart';
import '../entities/barril_entity.dart';
import '../repositories/barril_repository.dart';

class InsertBarrilUseCase {
  final BarrilRepository _repository;

  InsertBarrilUseCase(this._repository);

  Future<Either<Failure, Unit>> call(InsertBarrilParams params) async {
    final nome = params.nome;
    final volume = params.volume;

    if (nome.isEmpty) return Left(UnknownFailure('O nome do barril não pode estar vazio'));
    if (volume.isNegative || volume.isNegative) {
      return Left(UnknownFailure('O volume do barril deve ser um numero maior do que zero'));
    }

    final idGerado = const Uuid().v4();
    final criadoEm = DateTime.now();

    final barril = BarrilEntity(
      id: idGerado,
      nome: nome,
      volume: volume,
      criadoEm: criadoEm,
      descartavel: params.descartavel,
      statusSincronizacao: StatusSincronizacao.aguardandoEnvio,
    );

    return await _repository.insert(barril);
  }
}

class InsertBarrilParams {
  final String nome;
  final int volume;
  final bool descartavel;

  InsertBarrilParams({required this.nome, required this.volume, this.descartavel = false});
}
