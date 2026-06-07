import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../repositories/anotacao_repository.dart';

class GetSaldoAnotacoesOfHorarioUseCase {
  final AnotacaoRepository _repository;

  GetSaldoAnotacoesOfHorarioUseCase(this._repository);

  Future<Either<Failure, int>> call({
    required String producaoId,
    required String horarioReferente,
  }) async {
    final result = await _repository.getAllAnotacoesOfHorario(
      producaoId: producaoId,
      horarioReferente: horarioReferente,
    );

    return result.fold((failure) => Left(failure), (listaAnotacoes) {
      final total = listaAnotacoes.fold<int>(0, (soma, anotacao) => soma + anotacao.quantidade);

      return Right(total);
    });
  }
}
