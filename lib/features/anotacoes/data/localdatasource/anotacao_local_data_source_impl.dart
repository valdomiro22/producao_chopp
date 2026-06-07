import 'dart:developer' as dev;

import 'package:producao_chopp/core/error/app_database_exception.dart';
import 'package:producao_chopp/features/anotacoes/data/models/anotacao_local_model.dart';

import '../dao/anotacao_dao.dart';
import 'anotacao_local_data_source.dart';

class AnotacaoLocalDataSourceImpl implements AnotacaoLocalDataSource {
  final AnotacaoDao _dao;

  AnotacaoLocalDataSourceImpl(this._dao);

  @override
  Future<void> delete(AnotacaoLocalModel anotacao) async {
    try {
      return await _dao.delete(anotacao);
    } catch (e, stackTrace) {
      throw AppDatabaseException(
        'Erro ao deletar anotacao no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<List<AnotacaoLocalModel>> getAllAnotacoesOfProducao(String producaoId) async {
    try {
      return await _dao.getAllAnotacoesOfProducao(producaoId);
    } catch (e, stackTrace) {
      throw AppDatabaseException(
        'Erro ao buscar todas as anotacoes no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<AnotacaoLocalModel?> getOneById(String anotacaoId) async {
    try {
      return await _dao.getOneById(anotacaoId);
    } catch (e, stackTrace) {
      throw AppDatabaseException(
        'Erro ao buscar anotacao no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> insert(AnotacaoLocalModel anotacao) async {
    try {
      return await _dao.insert(anotacao);
    } catch (e, stackTrace) {
      dev.log('LocalDataSource: insert -> $e');
      throw AppDatabaseException(
        'Erro ao salvar anotacao no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> update(AnotacaoLocalModel anotacao) async {
    try {
      await _dao.update(anotacao);
    } catch (e, stackTrace) {
      throw AppDatabaseException(
        'Erro ao atualizar anotacao no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> updateStatusSincronizacao({
    required String anotacaoId,
    required String statusSincronizacao,
  }) async {
    try {
      await _dao.updateStatusSincronizacao(
        anotacaoId: anotacaoId,
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

  @override
  Future<List<AnotacaoLocalModel>> getAllAnotacoesOfHorario({
    required String producaoId,
    required String horarioReferente,
  }) async {
    try {
      return await _dao.getAllAnotacoesOfHorario(
        producaoId: producaoId,
        horarioReferente: horarioReferente,
      );
    } catch (e, stackTrace) {
      throw AppDatabaseException(
        'Erro ao buscar todas as anotacoes no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }
}
