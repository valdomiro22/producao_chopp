import '../../../../core/enums/status_sincronizacao.dart';

class BarrilLocalModel {
  final String id;
  final String nome;
  final int volume;
  final DateTime criadoEm;
  final DateTime? editadoEm;
  final bool descartavel;
  final StatusSincronizacao statusSincronizacao;

  const BarrilLocalModel({
    required this.id,
    required this.nome,
    required this.volume,
    required this.criadoEm,
    this.editadoEm,
    required this.descartavel,
    required this.statusSincronizacao,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'volume': volume,
      'criado_em': criadoEm.millisecondsSinceEpoch,
      'editado_em': editadoEm?.millisecondsSinceEpoch,
      'descartavel': descartavel ? 1 : 0,
      'status_sincronizacao': statusSincronizacao.name,
    };
  }

  factory BarrilLocalModel.fromMap(Map<String, dynamic> map) {
    return BarrilLocalModel(
      id: map['id'] as String,
      nome: map['nome'] as String,
      volume: map['volume'] as int,
      criadoEm: DateTime.fromMillisecondsSinceEpoch(map['criado_em'] as int),
      editadoEm: map['editado_em'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['editado_em'] as int)
          : null,
      descartavel: (map['descartavel'] as int) == 1,
      statusSincronizacao: StatusSincronizacao.values.byName(
        map['status_sincronizacao'] as String,
      ),
    );
  }

  BarrilLocalModel copyWith({
    String? id,
    String? nome,
    int? volume,
    DateTime? criadoEm,
    DateTime? editadoEm,
    bool? descartavel,
    StatusSincronizacao? statusSincronizacao,
  }) {
    return BarrilLocalModel(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      volume: volume ?? this.volume,
      criadoEm: criadoEm ?? this.criadoEm,
      editadoEm: editadoEm ?? this.editadoEm,
      descartavel: descartavel ?? this.descartavel,
      statusSincronizacao: statusSincronizacao ?? this.statusSincronizacao,
    );
  }
}
