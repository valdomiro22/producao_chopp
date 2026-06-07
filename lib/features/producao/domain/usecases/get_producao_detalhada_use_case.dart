import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../barril/domain/repositories/barril_repository.dart';
import '../../../produto/domain/repositories/produto_repository.dart';
import '../entities/producao_detalhada.dart';
import '../repositories/producao_repository.dart';

class GetProducaoDetalhadaUseCase {
  final ProducaoRepository _producaoRepository;
  final BarrilRepository _barrilRepository;
  final ProdutoRepository _produtoRepository;

  GetProducaoDetalhadaUseCase(
    this._producaoRepository,
    this._barrilRepository,
    this._produtoRepository,
  );

  Future<Either<Failure, ProducaoDetalhada>> call(String producaoId) async {
    if (producaoId.isEmpty) {
      return Left(UnknownFailure('ID da produção não pode estar vazio'));
    }

    final producaoResult = await _producaoRepository.getOneById(producaoId);

    return await producaoResult.fold(
      (failure) async {
        return Left(failure);
      },
      (producao) async {
        if (producao == null) {
          return Left(DatabaseFailure('Produção não encontrada'));
        }

        final barrilResult = await _barrilRepository.getOneById(producao.barrilId);

        return await barrilResult.fold(
          (failure) async {
            return Left(failure);
          },
          (barril) async {
            if (barril == null) {
              return Left(DatabaseFailure('Barril não encontrado'));
            }

            final produtoResult = await _produtoRepository.getOneById(producao.produtoId);

            return produtoResult.fold(
              (failure) {
                return Left(failure);
              },
              (produto) {
                if (produto == null) {
                  return Left(DatabaseFailure('Produto não encontrado'));
                }

                return Right(
                  ProducaoDetalhada(producao: producao, barril: barril, produto: produto),
                );
              },
            );
          },
        );
      },
    );
  }
}
