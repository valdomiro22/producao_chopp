class TabelaGrade {
  static const String tableName = 'grade';

  static const String id = 'id';
  static const String numero = 'numero';
  static const String quantidadeBarris = 'quantidade_barris';
  static const String volumeHlNecessario = 'volume_hl_necessario';
  static const String data = 'data';
  static const String criadoEm = 'criado_em';
  static const String editadoEm = 'editado_em';
  static const String statusSincronizacao = 'status_sincronizacao';

  static const String createTable = '''
    CREATE TABLE $tableName (
      $id TEXT PRIMARY KEY,
      $numero TEXT NOT NULL,
      $quantidadeBarris INTEGER NOT NULL,
      $volumeHlNecessario REAL NOT NULL,
      $data INTEGER NOT NULL,
      $criadoEm INTEGER NOT NULL,
      $editadoEm INTEGER,
      $statusSincronizacao TEXT NOT NULL
    )
  ''';
}