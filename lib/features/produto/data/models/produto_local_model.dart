import '../../../../core/enums/status_sincronizacao.dart';

class ProdutoLocalModel {
  final String id;
  final String nome;
  final int prazoValidade;
  final DateTime criadoEm;
  final DateTime? editadoEm;
  final StatusSincronizacao statusSincronizacao;

  ProdutoLocalModel({
    required this.id,
    required this.nome,
    required this.prazoValidade,
    required this.criadoEm,
    this.editadoEm,
    required this.statusSincronizacao,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'prozo_validade': prazoValidade,
      'criado_em': criadoEm.millisecondsSinceEpoch,
      'editado_em': editadoEm?.millisecondsSinceEpoch,
      'status_sincronizacao': statusSincronizacao.name,
    };
  }

  factory ProdutoLocalModel.fromMap(Map<String, dynamic> map) {
    return ProdutoLocalModel(
      id: map['id'] as String,
      nome: map['nome'] as String,
      prazoValidade: map['prozo_validade'] as int,
      criadoEm: DateTime.fromMillisecondsSinceEpoch(map['criado_em'] as int),
      editadoEm: map['editado_em'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['editado_em'] as int)
          : null,
      statusSincronizacao: StatusSincronizacao.values.byName(map['status_sincronizacao'] as String),
    );
  }

  ProdutoLocalModel copyWith({
    String? id,
    String? nome,
    int? prazoValidade,
    DateTime? editadoEm,
    DateTime? criadoEm,
    StatusSincronizacao? statusSincronizacao,
  }) {
    return ProdutoLocalModel(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      prazoValidade: prazoValidade ?? this.prazoValidade,
      criadoEm: criadoEm ?? this.criadoEm,
      editadoEm: editadoEm ?? this.editadoEm,
      statusSincronizacao: statusSincronizacao ?? this.statusSincronizacao,
    );
  }
}
