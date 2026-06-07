import 'package:sqflite/sqflite.dart';

import '../../../../core/database/app_database.dart';
import '../database/tabela_barril.dart';
import '../models/barril_local_model.dart';

class BarrilDao {
  final AppDatabase _database;

  BarrilDao(this._database);

  Future<void> insert(BarrilLocalModel barril) async {
    final db = await _database.database;

    await db.insert(
      TabelaBarril.tableName,
      barril.toMap(),
      conflictAlgorithm: ConflictAlgorithm.abort,
    );
  }

  Future<void> update(BarrilLocalModel barril) async {
    final db = await _database.database;

    await db.update(
      TabelaBarril.tableName,
      barril.toMap(),
      where: '${TabelaBarril.id} = ?',
      whereArgs: [barril.id],
    );
  }

  Future<void> delete(BarrilLocalModel barril) async {
    final db = await _database.database;

    await db.delete(
      TabelaBarril.tableName,
      where: '${TabelaBarril.id} = ?',
      whereArgs: [barril.id],
    );
  }

  Future<List<BarrilLocalModel>> getAll() async {
    final db = await _database.database;

    final result = await db.query(TabelaBarril.tableName, orderBy: '${TabelaBarril.criadoEm} ASC');

    return result.map(BarrilLocalModel.fromMap).toList();
  }

  Future<BarrilLocalModel?> getOneById(String barrilId) async {
    final db = await _database.database;

    final result = await db.query(
      TabelaBarril.tableName,
      where: '${TabelaBarril.id} = ?',
      whereArgs: [barrilId],
      limit: 1,
    );

    if (result.isEmpty) return null;

    return BarrilLocalModel.fromMap(result.first);
  }

  Future<void> updateStatusSincronizacao({
    required String barrilId,
    required String statusSincronizacao,
  }) async {
    final db = await _database.database;

    await db.update(
      TabelaBarril.tableName,
      {TabelaBarril.statusSincronizacao: statusSincronizacao},
      where: '${TabelaBarril.id} = ?',
      whereArgs: [barrilId],
    );
  }
}
