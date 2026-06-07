import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/movimentacao_entity.dart';
import '../repositories/anotacao_repository.dart';

class GetAllAnotacoesOfProducaoUseCase {
  final AnotacaoRepository _repository;

  GetAllAnotacoesOfProducaoUseCase(this._repository);

  Future<Either<Failure, List<AnotacaoEntity>>> call(String anotacaoId) async {
    return _repository.getAllAnotacoesOfProducao(anotacaoId);
  }
}
