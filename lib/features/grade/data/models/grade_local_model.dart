import '../../../../core/enums/status_sincronizacao.dart';

class GradeLocalModel {
  final String id;
  final String numero;
  final DateTime data;
  final int quantidadeBarris;
  final double volumeHlNecessario;
  final DateTime criadoEm;
  final DateTime? editadoEm;
  final StatusSincronizacao statusSincronizacao;

  GradeLocalModel({
    required this.id,
    required this.numero,
    required this.data,
    required this.quantidadeBarris,
    required this.volumeHlNecessario,
    required this.criadoEm,
    this.editadoEm,
    required this.statusSincronizacao,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'numero': numero,
      'data': data.millisecondsSinceEpoch,
      'quantidade_barris': quantidadeBarris,
      'volume_hl_necessario': volumeHlNecessario,
      'criado_em': criadoEm.millisecondsSinceEpoch,
      'editado_em': editadoEm?.millisecondsSinceEpoch,
      'status_sincronizacao': statusSincronizacao.name,
    };
  }

  factory GradeLocalModel.fromMap(Map<String, dynamic> map) {
    return GradeLocalModel(
      id: map['id'] as String,
      numero: map['numero'] as String,
      data: DateTime.fromMillisecondsSinceEpoch(map['data'] as int),
      quantidadeBarris: map['quantidade_barris'] as int,
      volumeHlNecessario: map['volume_hl_necessario'] as double,
      criadoEm: DateTime.fromMillisecondsSinceEpoch(map['criado_em'] as int),
      editadoEm: map['editado_em'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['editado_em'] as int)
          : null,
      statusSincronizacao: StatusSincronizacao.values.byName(map['status_sincronizacao'] as String),
    );
  }

  GradeLocalModel copyWith({
    String? id,
    String? numero,
    DateTime? data,
    int? quantidadeBarris,
    double? volumeHlNecessario,
    DateTime? criadoEm,
    DateTime? editadoEm,
    StatusSincronizacao? statusSincronizacao,
  }) {
    return GradeLocalModel(
      id: id ?? this.id,
      numero: numero ?? this.numero,
      data: data ?? this.data,
      quantidadeBarris: quantidadeBarris ?? this.quantidadeBarris,
      volumeHlNecessario: volumeHlNecessario ?? this.volumeHlNecessario,
      criadoEm: criadoEm ?? this.criadoEm,
      editadoEm: editadoEm ?? this.editadoEm,
      statusSincronizacao: statusSincronizacao ?? this.statusSincronizacao,
    );
  }
}
