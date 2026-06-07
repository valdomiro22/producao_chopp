import 'package:dartz/dartz.dart';

import '../../../../core/enums/status_sincronizacao.dart';
import '../../../../core/error/failure.dart';
import '../entities/produto_entity.dart';
import '../repositories/produto_repository.dart';

class UpdateProdutoUseCase {
  final ProdutoRepository _repository;

  UpdateProdutoUseCase(this._repository);

  Future<Either<Failure, Unit>> call(UpdateProdutoParams params) async {
    final nome = params.nome;
    final prazoValidade = params.prazoValidade;

    if (nome.isEmpty) return Left(UnknownFailure('O nome do produto não pode estar vazio'));
    if (prazoValidade.isNegative || prazoValidade.isNegative) {
      return Left(
        UnknownFailure('O prazo de validade do produto deve ser um numero maior do que zero'),
      );
    }

    final editadoEm = DateTime.now();

    final produto = ProdutoEntity(
      id: params.id,
      nome: nome,
      prazoValidade: prazoValidade,
      criadoEm: params.criadoEm,
      editadoEm: editadoEm,
      statusSincronizacao: StatusSincronizacao.aguardandoAtualizacao,
    );

    return await _repository.update(produto);
  }
}

class UpdateProdutoParams {
  final String id;
  final String nome;
  final int prazoValidade;
  final DateTime criadoEm;

  UpdateProdutoParams({
    required this.id,
    required this.nome,
    required this.prazoValidade,
    required this.criadoEm,
  });
}
