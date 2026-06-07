import '../models/produto_local_model.dart';

abstract class ProdutoLocalDataSource {
  Future<void> insert(ProdutoLocalModel produto);

  Future<void> update(ProdutoLocalModel produto);

  Future<void> delete(ProdutoLocalModel produto);

  Future<List<ProdutoLocalModel>> getAll();

  Future<ProdutoLocalModel?> getOneById(String produtoId);

  Future<void> updateStatusSincronizacao({
    required String produtoId,
    required String statusSincronizacao,
  });
}
