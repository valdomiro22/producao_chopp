import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/movimentacao_entity.dart';
import '../repositories/anotacao_repository.dart';

class GetAllAnotacoesOfHorarioUseCase {
  final AnotacaoRepository _repository;

  GetAllAnotacoesOfHorarioUseCase(this._repository);

  Future<Either<Failure, List<AnotacaoEntity>>> call({
    required String producaoId,
    required String horarioReferente,
  }) async {
    return _repository.getAllAnotacoesOfHorario(
      producaoId: producaoId,
      horarioReferente: horarioReferente,
    );
  }
}
