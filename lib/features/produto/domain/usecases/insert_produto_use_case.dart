import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/enums/status_sincronizacao.dart';
import '../../../../core/error/failure.dart';
import '../entities/produto_entity.dart';
import '../repositories/produto_repository.dart';

class InsertProdutoUseCase {
  final ProdutoRepository _repository;

  InsertProdutoUseCase(this._repository);

  Future<Either<Failure, Unit>> call(InsertProdutoParams params) async {
    final nome = params.nome;
    final prazoValidade = params.prazoValidade;

    if (nome.isEmpty) return Left(UnknownFailure('O nome do produto não pode estar vazio'));
    if (prazoValidade.isNegative || prazoValidade.isNegative) {
      return Left(
        UnknownFailure('O proazo de validade do produto deve ser um numero maior do que zero'),
      );
    }

    final idGerado = const Uuid().v4();
    final criadoEm = DateTime.now();

    final produto = ProdutoEntity(
      id: idGerado,
      nome: nome,
      prazoValidade: prazoValidade,
      criadoEm: criadoEm,
      statusSincronizacao: StatusSincronizacao.aguardandoEnvio,
    );

    return await _repository.insert(produto);
  }
}

class InsertProdutoParams {
  final String nome;
  final int prazoValidade;

  InsertProdutoParams({required this.nome, required this.prazoValidade});
}
