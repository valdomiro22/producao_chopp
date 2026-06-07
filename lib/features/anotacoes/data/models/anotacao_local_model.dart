import 'package:producao_chopp/features/anotacoes/domain/entities/tipo_movimentacao.dart';

import '../../../../core/enums/status_sincronizacao.dart';

class AnotacaoLocalModel {
  final String id;
  final String producaoId;
  final int turnoId;
  final String horarioReferente;
  final int quantidade;
  final TipoAnotacao tipo;
  final DateTime criadoEm;
  final StatusSincronizacao statusSincronizacao;

  AnotacaoLocalModel({
    required this.id,
    required this.producaoId,
    required this.turnoId,
    required this.horarioReferente,
    required this.quantidade,
    required this.tipo,
    required this.criadoEm,
    required this.statusSincronizacao,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'producao_id': producaoId,
      'turno_id': turnoId,
      'horario_referente': horarioReferente,
      'quantidade': quantidade,
      'tipo': tipo.name,
      'criado_em': criadoEm.millisecondsSinceEpoch,
      'status_sincronizacao': statusSincronizacao.name,
    };
  }

  factory AnotacaoLocalModel.fromMap(Map<String, dynamic> map) {
    return AnotacaoLocalModel(
      id: map['id'] as String,
      producaoId: map['producao_id'] as String,
      turnoId: map['turno_id'] as int,
      horarioReferente: map['horario_referente'] as String,
      quantidade: map['quantidade'] as int,
      tipo: TipoAnotacao.values.byName(map['tipo'] as String),
      criadoEm: DateTime.fromMillisecondsSinceEpoch(map['criado_em'] as int),
      statusSincronizacao: StatusSincronizacao.values.byName(map['status_sincronizacao'] as String),
    );
  }

  AnotacaoLocalModel copyWith({
    String? id,
    String? producaoId,
    int? turnoId,
    String? horarioReferente,
    int? quantidade,
    TipoAnotacao? tipo,
    DateTime? criadoEm,
    StatusSincronizacao? statusSincronizacao,
  }) {
    return AnotacaoLocalModel(
      id: id ?? this.id,
      producaoId: producaoId ?? this.producaoId,
      turnoId: turnoId ?? this.turnoId,
      horarioReferente: horarioReferente ?? this.horarioReferente,
      quantidade: quantidade ?? this.quantidade,
      tipo: tipo ?? this.tipo,
      criadoEm: criadoEm ?? this.criadoEm,
      statusSincronizacao: statusSincronizacao ?? this.statusSincronizacao,
    );
  }
}
