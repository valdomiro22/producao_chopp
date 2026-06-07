class TabelaProduto {
  static const String tableName = 'produto';

  static const String id = 'id';
  static const String nome = 'nome';
  static const String prazoValidade = 'prozo_validade';
  static const String statusSincronizacao = 'status_sincronizacao';
  static const String criadoEm = 'criado_em';
  static const String editadoEm = 'editado_em';

  static const String createTable = '''
    CREATE TABLE $tableName (
      $id TEXT PRIMARY KEY,
      $nome TEXT NOT NULL,
      $prazoValidade INTEGER NOT NULL,
      $criadoEm INTEGER NOT NULL,
      $editadoEm INTEGER,
      $statusSincronizacao TEXT NOT NULL
    )
  ''';
}
