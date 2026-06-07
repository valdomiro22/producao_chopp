import '../../../../core/enums/status_producao.dart';
import '../../../../core/enums/status_sincronizacao.dart';

class ProducaoLocalModel {
  final String id;
  final String gradeId;
  final String barrilId;
  final String produtoId;
  final int quantidadeProgramada;
  final int quantidadeProduzida;
  final double volumeNecessario;
  final StatusProducao status;
  final DateTime? dataFimProducao;
  final DateTime criadoEm;
  final DateTime dataInicioProducao;
  final DateTime? editadoEm;
  final StatusSincronizacao statusSincronizacao;

  ProducaoLocalModel({
    required this.id,
    required this.gradeId,
    required this.status,
    required this.barrilId,
    required this.produtoId,
    required this.quantidadeProgramada,
    required this.volumeNecessario,
    this.quantidadeProduzida = 0,
    this.dataFimProducao,
    required this.criadoEm,
    required this.dataInicioProducao,
    this.editadoEm,
    required this.statusSincronizacao,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'grade_id': gradeId,
      'status': status.name,
      'barril_id': barrilId,
      'produto_id': produtoId,
      'quantidade_programada': quantidadeProgramada,
      'quantidade_produzida': quantidadeProduzida,
      'volume_necessario': volumeNecessario,
      'data_fim_producao': dataFimProducao?.millisecondsSinceEpoch,
      'criado_em': criadoEm.millisecondsSinceEpoch,
      'data_inicio_producao': dataInicioProducao.millisecondsSinceEpoch,
      'editado_em': editadoEm?.millisecondsSinceEpoch,
      'status_sincronizacao': statusSincronizacao.name,
    };
  }

  factory ProducaoLocalModel.fromMap(Map<String, dynamic> map) {
    return ProducaoLocalModel(
      id: map['id'] as String,
      gradeId: map['grade_id'] as String,
      status: StatusProducao.values.byName(map['status'] as String),
      barrilId: map['barril_id'] as String,
      produtoId: map['produto_id'] as String,
      quantidadeProgramada: map['quantidade_programada'] as int,
      quantidadeProduzida: map['quantidade_produzida'] as int,
      volumeNecessario: (map['volume_necessario'] as num).toDouble(),
      criadoEm: DateTime.fromMillisecondsSinceEpoch(map['criado_em'] as int),
      dataInicioProducao: DateTime.fromMillisecondsSinceEpoch(map['data_inicio_producao'] as int),
      statusSincronizacao: StatusSincronizacao.values.byName(map['status_sincronizacao'] as String),
      dataFimProducao: map['data_fim_producao'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['data_fim_producao'] as int)
          : null,
      editadoEm: map['editado_em'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['editado_em'] as int)
          : null,
    );
  }

  ProducaoLocalModel copyWith({
    String? id,
    String? gradeId,
    StatusProducao? status,
    String? barrilId,
    String? produtoId,
    int? quantidadeProgramada,
    int? quantidadeProduzida,
    double? volumeNecessario,
    DateTime? dataFimProducao,
    DateTime? criadoEm,
    DateTime? dataInicioProducao,
    DateTime? editadoEm,
    StatusSincronizacao? statusSincronizacao,
  }) {
    return ProducaoLocalModel(
      id: id ?? this.id,
      gradeId: gradeId ?? this.gradeId,
      status: status ?? this.status,
      barrilId: barrilId ?? this.barrilId,
      produtoId: produtoId ?? this.produtoId,
      quantidadeProgramada: quantidadeProgramada ?? this.quantidadeProgramada,
      quantidadeProduzida: quantidadeProduzida ?? this.quantidadeProduzida,
      volumeNecessario: volumeNecessario ?? this.volumeNecessario,
      dataFimProducao: dataFimProducao ?? this.dataFimProducao,
      criadoEm: criadoEm ?? this.criadoEm,
      dataInicioProducao: dataInicioProducao ?? this.dataInicioProducao,
      editadoEm: editadoEm ?? this.editadoEm,
      statusSincronizacao: statusSincronizacao ?? this.statusSincronizacao,
    );
  }
}
