import 'package:sqflite/sqflite.dart';

import '../../../../core/database/app_database.dart';
import '../database/tabela_anotacao.dart';
import '../models/anotacao_local_model.dart';

class AnotacaoDao {
  final AppDatabase _database;

  AnotacaoDao(this._database);

  Future<void> insert(AnotacaoLocalModel anotacao) async {
    final db = await _database.database;

    await db.insert(
      TabelaAnotacao.tableName,
      anotacao.toMap(),
      conflictAlgorithm: ConflictAlgorithm.abort,
    );
  }

  Future<void> update(AnotacaoLocalModel anotacao) async {
    final db = await _database.database;

    await db.update(
      TabelaAnotacao.tableName,
      anotacao.toMap(),
      where: '${TabelaAnotacao.id} = ?',
      whereArgs: [anotacao.id],
    );
  }

  Future<void> delete(AnotacaoLocalModel anotacao) async {
    final db = await _database.database;

    await db.delete(
      TabelaAnotacao.tableName,
      where: '${TabelaAnotacao.id} = ?',
      whereArgs: [anotacao.id],
    );
  }

  Future<List<AnotacaoLocalModel>> getAllAnotacoesOfProducao(String producaoId) async {
    final db = await _database.database;

    final result = await db.query(
      TabelaAnotacao.tableName,
      where: '${TabelaAnotacao.producaoId} = ?',
      whereArgs: [producaoId],
    );

    return result.map(AnotacaoLocalModel.fromMap).toList();
  }

  Future<AnotacaoLocalModel?> getOneById(String anotacaoId) async {
    final db = await _database.database;

    final result = await db.query(
      TabelaAnotacao.tableName,
      where: '${TabelaAnotacao.id} = ?',
      whereArgs: [anotacaoId],
      limit: 1,
    );

    if (result.isEmpty) return null;

    return AnotacaoLocalModel.fromMap(result.first);
  }

  Future<void> updateStatusSincronizacao({
    required String anotacaoId,
    required String statusSincronizacao,
  }) async {
    final db = await _database.database;

    await db.update(
      TabelaAnotacao.tableName,
      {TabelaAnotacao.statusSincronizacao: statusSincronizacao},
      where: '${TabelaAnotacao.id} = ?',
      whereArgs: [anotacaoId],
    );
  }

  Future<List<AnotacaoLocalModel>> getAllAnotacoesOfHorario({
    required String producaoId,
    required String horarioReferente,
  }) async {
    final db = await _database.database;

    final result = await db.query(
      TabelaAnotacao.tableName,
      where: '''
        ${TabelaAnotacao.producaoId} = ?
        AND ${TabelaAnotacao.horarioReferente} = ?
      ''',
      whereArgs: [producaoId, horarioReferente],
      orderBy: '${TabelaAnotacao.criadoEm} ASC',
    );

    return result.map(AnotacaoLocalModel.fromMap).toList();
  }
}
