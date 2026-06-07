import 'package:producao_chopp/core/error/app_database_exception.dart';
import 'package:producao_chopp/features/producao/data/localdatasource/producao_local_data_source.dart';

import '../dao/producao_dao.dart';
import '../models/producao_local_model.dart';

class ProducaoLocalDataSourceImpl implements ProducaoLocalDataSource {
  final ProducaoDao _dao;

  ProducaoLocalDataSourceImpl(this._dao);

  @override
  Future<void> delete(ProducaoLocalModel producao) async {
    try {
      return await _dao.delete(producao);
    } catch (e, stackTrace) {
      throw AppDatabaseException(
        'Erro ao deletar producao no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<List<ProducaoLocalModel>> getAll() async {
    try {
      return await _dao.getAll();
    } catch (e, stackTrace) {
      throw AppDatabaseException(
        'Erro ao buscar todas as produções no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<ProducaoLocalModel?> getOneById(String producaoId) async {
    try {
      return await _dao.getOneById(producaoId);
    } catch (e, stackTrace) {
      throw AppDatabaseException(
        'Erro ao buscar producao no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> insert(ProducaoLocalModel producao) async {
    try {
      return await _dao.insert(producao);
    } catch (e, stackTrace) {
      throw AppDatabaseException(
        'Erro ao salvar producao no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> update(ProducaoLocalModel producao) async {
    try {
      await _dao.update(producao);
    } catch (e, stackTrace) {
      throw AppDatabaseException(
        'Erro ao atualizar producao no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> updateStatusSincronizacao({
    required String producaoId,
    required String statusSincronizacao,
  }) async {
    try {
      await _dao.updateStatusSincronizacao(
        producaoId: producaoId,
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
