import 'package:dartz/dartz.dart';

import '../../../../core/enums/status_sincronizacao.dart';
import '../../../../core/error/failure.dart';
import '../entities/barril_entity.dart';
import '../repositories/barril_repository.dart';

class UpdateBarrilUseCase {
  final BarrilRepository _repository;

  UpdateBarrilUseCase(this._repository);

  Future<Either<Failure, Unit>> call(UpdateBarrilParams params) async {
    final nome = params.nome;
    final volume = params.volume;

    if (nome.isEmpty) return Left(UnknownFailure('O nome do barril não pode estar vazio'));
    if (volume.isNegative || volume.isNegative) {
      return Left(UnknownFailure('O volume do barril deve ser um numero maior do que zero'));
    }

    final editadoEm = DateTime.now();

    final barril = BarrilEntity(
      id: params.id,
      nome: nome,
      volume: volume,
      criadoEm: params.criadoEm,
      descartavel: params.descartavel,
      editadoEm: editadoEm,
      statusSincronizacao: StatusSincronizacao.aguardandoAtualizacao,
    );

    return await _repository.update(barril);
  }
}

class UpdateBarrilParams {
  final String id;
  final String nome;
  final int volume;
  final bool descartavel;
  final DateTime criadoEm;

  UpdateBarrilParams({
    required this.id,
    required this.nome,
    required this.volume,
    required this.criadoEm,
    required this.descartavel,
  });
}
