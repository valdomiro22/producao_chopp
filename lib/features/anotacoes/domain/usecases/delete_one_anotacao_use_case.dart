import 'package:dartz/dartz.dart';
import 'package:producao_chopp/features/anotacoes/domain/entities/movimentacao_entity.dart';
import 'package:producao_chopp/features/anotacoes/domain/repositories/anotacao_repository.dart';

import '../../../../core/error/failure.dart';

class DeleteOneAnotacaoUseCase {
  final AnotacaoRepository _repository;

  DeleteOneAnotacaoUseCase(this._repository);

  Future<Either<Failure, Unit>> call(AnotacaoEntity Anotacao) async {
    return await _repository.delete(Anotacao);
  }
}
