import '../../../../core/enums/status_sincronizacao.dart';

class GradeEntity {
  final String id;
  final String numero;
  final DateTime data;
  final int quantidadeBarris;
  final double volumeHlNecessario;
  final DateTime criadoEm;
  final DateTime? editadoEm;
  final StatusSincronizacao statusSincronizacao;

  GradeEntity({
    required this.id,
    required this.numero,
    required this.data,
    required this.quantidadeBarris,
    required this.volumeHlNecessario,
    required this.criadoEm,
    this.editadoEm,
    required this.statusSincronizacao,
  });

  GradeEntity copyWith({
    String? id,
    String? numero,
    DateTime? data,
    int? quantidadeBarris,
    double? volumeHlNecessario,
    DateTime? criadoEm,
    DateTime? editadoEm,
    StatusSincronizacao? statusSincronizacao,
  }) {
    return GradeEntity(
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
