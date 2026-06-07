import 'package:sqflite/sqflite.dart';

import '../../../../core/database/app_database.dart';
import '../database/tabela_produto.dart';
import '../models/produto_local_model.dart';

class ProdutoDao {
  final AppDatabase _database;

  ProdutoDao(this._database);

  Future<void> insert(ProdutoLocalModel produto) async {
    final db = await _database.database;

    await db.insert(
      TabelaProduto.tableName,
      produto.toMap(),
      conflictAlgorithm: ConflictAlgorithm.abort,
    );
  }

  Future<void> update(ProdutoLocalModel produto) async {
    final db = await _database.database;

    await db.update(
      TabelaProduto.tableName,
      produto.toMap(),
      where: '${TabelaProduto.id} = ?',
      whereArgs: [produto.id],
    );
  }

  Future<void> delete(ProdutoLocalModel produto) async {
    final db = await _database.database;

    await db.delete(
      TabelaProduto.tableName,
      where: '${TabelaProduto.id} = ?',
      whereArgs: [produto.id],
    );
  }

  Future<List<ProdutoLocalModel>> getAll() async {
    final db = await _database.database;

    final result = await db.query(
      TabelaProduto.tableName,
      orderBy: '${TabelaProduto.criadoEm} ASC',
    );

    return result.map(ProdutoLocalModel.fromMap).toList();
  }

  Future<ProdutoLocalModel?> getOneById(String produtoId) async {
    final db = await _database.database;

    final result = await db.query(
      TabelaProduto.tableName,
      where: '${TabelaProduto.id} = ?',
      whereArgs: [produtoId],
      limit: 1,
    );

    if (result.isEmpty) return null;

    return ProdutoLocalModel.fromMap(result.first);
  }

  Future<void> updateStatusSincronizacao({
    required String produtoId,
    required String statusSincronizacao,
  }) async {
    final db = await _database.database;

    await db.update(
      TabelaProduto.tableName,
      {TabelaProduto.statusSincronizacao: statusSincronizacao},
      where: '${TabelaProduto.id} = ?',
      whereArgs: [produtoId],
    );
  }
}
