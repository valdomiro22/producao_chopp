import 'package:producao_chopp/features/anotacoes/domain/entities/tipo_movimentacao.dart';

import '../../../../core/enums/status_sincronizacao.dart';

class AnotacaoEntity {
  final String id;
  final String producaoId;
  final int turnoId;
  final String horarioReferente;
  final int quantidade;
  final TipoAnotacao tipo;
  final DateTime criadoEm;
  final StatusSincronizacao statusSincronizacao;

  AnotacaoEntity({
    required this.id,
    required this.producaoId,
    required this.turnoId,
    required this.horarioReferente,
    required this.quantidade,
    required this.tipo,
    required this.criadoEm,
    required this.statusSincronizacao,
  });

  AnotacaoEntity copyWith({
    String? id,
    String? producaoId,
    int? turnoId,
    String? horarioReferente,
    int? quantidade,
    TipoAnotacao? tipo,
    DateTime? criadoEm,
    StatusSincronizacao? statusSincronizacao,
  }) {
    return AnotacaoEntity(
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

  @override
  String toString() {
    return 'AnotacaoEntity('
        'id: $id'
        '; producaoId: $producaoId'
        '; turnoId: $turnoId'
        '; horarioReferente: $horarioReferente'
        '; quantidade: $quantidade'
        '; tipo: $tipo'
        '; criadoEm: $criadoEm'
        '; statusSincronizacao: $statusSincronizacao'
        ')';
  }
}
