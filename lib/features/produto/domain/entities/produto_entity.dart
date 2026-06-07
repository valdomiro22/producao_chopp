import '../../../../core/enums/status_sincronizacao.dart';

class ProdutoEntity {
  final String id;
  final String nome;
  final int prazoValidade;
  final DateTime criadoEm;
  final DateTime? editadoEm;
  final StatusSincronizacao statusSincronizacao;

  ProdutoEntity({
    required this.id,
    required this.nome,
    required this.prazoValidade,
    required this.criadoEm,
    this.editadoEm,
    required this.statusSincronizacao,
  });

  ProdutoEntity copyWith({
    String? id,
    String? nome,
    int? prazoValidade,
    DateTime? editadoEm,
    DateTime? criadoEm,
    StatusSincronizacao? statusSincronizacao,
  }) {
    return ProdutoEntity(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      prazoValidade: prazoValidade ?? this.prazoValidade,
      criadoEm: criadoEm ?? this.criadoEm,
      editadoEm: editadoEm ?? this.editadoEm,
      statusSincronizacao: statusSincronizacao ?? this.statusSincronizacao,
    );
  }
}
