import 'package:producao_chopp/core/error/app_database_exception.dart';
import 'package:producao_chopp/features/produto/data/localdatasource/produto_local_data_source.dart';

import '../dao/produto_dao.dart';
import '../models/produto_local_model.dart';

class ProdutoLocalDataSourceImpl implements ProdutoLocalDataSource {
  final ProdutoDao _dao;

  ProdutoLocalDataSourceImpl(this._dao);

  @override
  Future<void> delete(ProdutoLocalModel produto) async {
    try {
      return await _dao.delete(produto);
    } catch (e, stackTrace) {
      throw AppDatabaseException(
        'Erro ao deletar produto no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<List<ProdutoLocalModel>> getAll() async {
    try {
      return await _dao.getAll();
    } catch (e, stackTrace) {
      throw AppDatabaseException(
        'Erro ao buscar todos os produtos no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<ProdutoLocalModel?> getOneById(String produtoId) async {
    try {
      return await _dao.getOneById(produtoId);
    } catch (e, stackTrace) {
      throw AppDatabaseException(
        'Erro ao buscar produto no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> insert(ProdutoLocalModel produto) async {
    try {
      return await _dao.insert(produto);
    } catch (e, stackTrace) {
      throw AppDatabaseException(
        'Erro ao salvar produto no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> update(ProdutoLocalModel produto) async {
    try {
      await _dao.update(produto);
    } catch (e, stackTrace) {
      throw AppDatabaseException(
        'Erro ao atualizar produto no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> updateStatusSincronizacao({
    required String produtoId,
    required String statusSincronizacao,
  }) async {
    try {
      await _dao.updateStatusSincronizacao(
        produtoId: produtoId,
        statusSincronizacao: statusSincronizacao,
      );
    } catch (e, stackTrace) {
      throw AppDatabaseException(
        'Erro ao atualizar status de sincronização no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }
}
