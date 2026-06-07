import 'package:sqflite/sqflite.dart';

import '../../../../core/database/app_database.dart';
import '../database/tabela_producao.dart';
import '../models/producao_local_model.dart';

class ProducaoDao {
  final AppDatabase _database;

  ProducaoDao(this._database);

  Future<void> insert(ProducaoLocalModel producao) async {
    final db = await _database.database;

    await db.insert(
      TabelaProducao.tableName,
      producao.toMap(),
      conflictAlgorithm: ConflictAlgorithm.abort,
    );
  }

  Future<void> update(ProducaoLocalModel producao) async {
    final db = await _database.database;

    await db.update(
      TabelaProducao.tableName,
      producao.toMap(),
      where: '${TabelaProducao.id} = ?',
      whereArgs: [producao.id],
    );
  }

  Future<void> delete(ProducaoLocalModel producao) async {
    final db = await _database.database;

    await db.delete(
      TabelaProducao.tableName,
      where: '${TabelaProducao.id} = ?',
      whereArgs: [producao.id],
    );
  }

  Future<List<ProducaoLocalModel>> getAll() async {
    final db = await _database.database;

    final result = await db.query(
      TabelaProducao.tableName,
      orderBy: '${TabelaProducao.criadoEm} ASC',
    );

    return result.map(ProducaoLocalModel.fromMap).toList();
  }

  Future<ProducaoLocalModel?> getOneById(String producaoId) async {
    final db = await _database.database;

    final result = await db.query(
      TabelaProducao.tableName,
      where: '${TabelaProducao.id} = ?',
      whereArgs: [producaoId],
      limit: 1,
    );

    if (result.isEmpty) return null;

    return ProducaoLocalModel.fromMap(result.first);
  }

  Future<void> updateStatusSincronizacao({
    required String producaoId,
    required String statusSincronizacao,
  }) async {
    final db = await _database.database;

    await db.update(
      TabelaProducao.tableName,
      {TabelaProducao.statusSincronizacao: statusSincronizacao},
      where: '${TabelaProducao.id} = ?',
      whereArgs: [producaoId],
    );
  }
}
