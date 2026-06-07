class TabelaBarril {
  static const String tableName = 'barril';

  static const String id = 'id';
  static const String nome = 'nome';
  static const String volume = 'volume';
  static const String criadoEm = 'criado_em';
  static const String editadoEm = 'editado_em';
  static const String descartavel = 'descartavel';
  static const String statusSincronizacao = 'status_sincronizacao';

  static const String createTable = '''
    CREATE TABLE $tableName (
      $id TEXT PRIMARY KEY,
      $nome TEXT NOT NULL,
      $volume INTEGER NOT NULL,
      $criadoEm INTEGER NOT NULL,
      $editadoEm INTEGER,
      $descartavel INTEGER NOT NULL,
      $statusSincronizacao TEXT NOT NULL
    )
  ''';
}