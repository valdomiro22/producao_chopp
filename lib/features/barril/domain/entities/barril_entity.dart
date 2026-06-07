import '../../../../core/enums/status_sincronizacao.dart';

class BarrilEntity {
  final String id;
  final String nome;
  final int volume;
  final DateTime criadoEm;
  final DateTime? editadoEm;
  final bool descartavel;
  final StatusSincronizacao statusSincronizacao;

  const BarrilEntity({
    required this.id,
    required this.nome,
    required this.volume,
    required this.criadoEm,
    this.editadoEm,
    required this.descartavel,
    required this.statusSincronizacao,
  });

  BarrilEntity copyWith({
    String? id,
    String? nome,
    int? volume,
    DateTime? criadoEm,
    DateTime? editadoEm,
    bool? descartavel,
    StatusSincronizacao? statusSincronizacao,
  }) {
    return BarrilEntity(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      volume: volume ?? this.volume,
      criadoEm: criadoEm ?? this.criadoEm,
      editadoEm: editadoEm ?? this.editadoEm,
      descartavel: descartavel ?? this.descartavel,
      statusSincronizacao:
      statusSincronizacao ?? this.statusSincronizacao,
    );
  }
}
