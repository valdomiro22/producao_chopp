import 'package:sqflite/sqflite.dart';

import '../../../../core/database/app_database.dart';
import '../database/tabela_grade.dart';
import '../models/grade_local_model.dart';

class GradeDao {
  final AppDatabase _database;

  GradeDao(this._database);

  Future<void> insert(GradeLocalModel grade) async {
    final db = await _database.database;

    await db.insert(
      TabelaGrade.tableName,
      grade.toMap(),
      conflictAlgorithm: ConflictAlgorithm.abort,
    );
  }

  Future<void> update(GradeLocalModel grade) async {
    final db = await _database.database;

    await db.update(
      TabelaGrade.tableName,
      grade.toMap(),
      where: '${TabelaGrade.id} = ?',
      whereArgs: [grade.id],
    );
  }

  Future<void> delete(GradeLocalModel grade) async {
    final db = await _database.database;

    await db.delete(TabelaGrade.tableName, where: '${TabelaGrade.id} = ?', whereArgs: [grade.id]);
  }

  Future<List<GradeLocalModel>> getAll() async {
    final db = await _database.database;

    final result = await db.query(TabelaGrade.tableName, orderBy: '${TabelaGrade.criadoEm} ASC');

    return result.map(GradeLocalModel.fromMap).toList();
  }

  Future<GradeLocalModel?> getOneById(String gradeId) async {
    final db = await _database.database;

    final result = await db.query(
      TabelaGrade.tableName,
      where: '${TabelaGrade.id} = ?',
      whereArgs: [gradeId],
      limit: 1,
    );

    if (result.isEmpty) return null;

    return GradeLocalModel.fromMap(result.first);
  }

  Future<void> updateStatusSincronizacao({
    required String gradeId,
    required String statusSincronizacao,
  }) async {
    final db = await _database.database;

    await db.update(
      TabelaGrade.tableName,
      {TabelaGrade.statusSincronizacao: statusSincronizacao},
      where: '${TabelaGrade.id} = ?',
      whereArgs: [gradeId],
    );
  }
}
