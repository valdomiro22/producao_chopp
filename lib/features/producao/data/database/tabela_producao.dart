class TabelaProducao {
  static const String tableName = 'producao';

  static const String id = 'id';
  static const String gradeId = 'grade_id';
  static const String barrilId = 'barril_id';
  static const String produtoId = 'produto_id';
  static const String quantidadeProgranada = 'quantidade_programada';
  static const String quantidadeProduzida = 'quantidade_produzida';
  static const String volumeNecessario = 'volume_necessario';
  static const String dataInicioProducao = 'data_inicio_producao';
  static const String dataFimProducao = 'data_fim_producao';
  static const String status = 'status';
  static const String criadoEm = 'criado_em';
  static const String editadoEm = 'editado_em';
  static const String statusSincronizacao = 'status_sincronizacao';

  static const String createTable = '''
    CREATE TABLE $tableName (
      $id TEXT PRIMARY KEY,
      $gradeId TEXT NOT NULL,
      $barrilId TEXT NOT NULL,
      $produtoId TEXT NOT NULL,
      $quantidadeProgranada INTEGER NOT NULL,
      $quantidadeProduzida INTEGER NOT NULL,
      $volumeNecessario REAL NOT NULL,
      $status TEXT NOT NULL,
      $dataInicioProducao INTEGER NULL,
      $dataFimProducao INTEGER NULL,
      $criadoEm INTEGER NOT NULL,
      $editadoEm INTEGER,
      $statusSincronizacao TEXT NOT NULL
    )
  ''';
}