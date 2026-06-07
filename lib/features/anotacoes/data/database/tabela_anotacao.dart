class TabelaAnotacao {
  static const String tableName = 'anotacao';

  static const String id = 'id';
  static const String producaoId = 'producao_id';
  static const String turnoId = 'turno_id';
  static const String horarioReferente = 'horario_referente';
  static const String quantidade = 'quantidade';
  static const String tipo = 'tipo';
  static const String criadoEm = 'criado_em';
  static const String statusSincronizacao = 'status_sincronizacao';

  static const String createTable = '''
    CREATE TABLE $tableName (
      $id TEXT PRIMARY KEY,
      $producaoId TEXT NOT NULL,
      $turnoId INTEGER NOT NULL,
      $horarioReferente TEXT NOT NULL,
      $quantidade INTEGER NOT NULL,
      $tipo TEXT NOT NULL,
      $criadoEm INTEGER NOT NULL,
      $statusSincronizacao TEXT NOT NULL
    )
  ''';
}
