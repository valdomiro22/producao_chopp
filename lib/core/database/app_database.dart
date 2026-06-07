import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../../features/barril/data/database/tabela_barril.dart';
import '../../features/grade/data/database/tabela_grade.dart';
import '../../features/produto/data/database/tabela_produto.dart';

class AppDatabase {
  AppDatabase._();

  static final AppDatabase instance = AppDatabase._();
  static Database? _database;

  static const nomeBanco = 'gestao_producao_chopp.db';

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, nomeBanco);

    return openDatabase(path, version: 2, onCreate: _onCreate);
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute(TabelaBarril.createTable);
    await db.execute(TabelaProduto.createTable);
    await db.execute(TabelaGrade.createTable);
    // await db.execute(TabelaProducao.createTable);
    // await db.execute(TabelaMovimentacao.createTable);
  }
}
