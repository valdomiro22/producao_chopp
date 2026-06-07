import 'package:producao_chopp/core/error/app_database_exception.dart';

import '../dao/barril_dao.dart';
import '../models/barril_local_model.dart';
import 'BarrilLocalDataSource.dart';

class Barrillocaldatasourceimpl implements BarrilLocalDataSource {
  final BarrilDao _dao;

  Barrillocaldatasourceimpl(this._dao);

  @override
  Future<void> delete(BarrilLocalModel barril) async {
    return _dao.delete(barril);
  }

  @override
  Future<List<BarrilLocalModel>> getAll() async {
    try {
      return await _dao.getAll();
    } catch (e, stackTrace) {
      throw AppDatabaseException(
        'Erro ao buscar todos os barris no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<BarrilLocalModel?> getOneById(String barrilId) async {
    try {
      return await _dao.getOneById(barrilId);
    } catch (e, stackTrace) {
      throw AppDatabaseException(
        'Erro ao buscar barril no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> insert(BarrilLocalModel barril) async {
    try {
      await _dao.insert(barril);
    } catch (e, stackTrace) {
      throw AppDatabaseException(
        'Erro ao inserir barril no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> update(BarrilLocalModel barril) async {
    try {
      await _dao.update(barril);
    } catch (e, stackTrace) {
      throw AppDatabaseException(
        'Erro ao atualizar barril no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> updateStatusSincronizacao({
    required String barrilId,
    required String statusSincronizacao,
  }) async {
    try {
      await _dao.updateStatusSincronizacao(
        barrilId: barrilId,
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
