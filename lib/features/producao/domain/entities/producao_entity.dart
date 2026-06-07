import '../../../../core/enums/status_producao.dart';
import '../../../../core/enums/status_sincronizacao.dart';

class ProducaoEntity {
  final String id;
  final String gradeId;
  final StatusProducao status;
  final String barrilId;
  final String produtoId;
  final int quantidadeProgramada;
  final int quantidadeProduzida;
  final double volumeNecessario;
  final DateTime dataInicioProducao;
  final DateTime? dataFimProducao;
  final DateTime criadoEm;
  final DateTime? editadoEm;
  final StatusSincronizacao statusSincronizacao;

  ProducaoEntity({
    required this.id,
    required this.gradeId,
    required this.status,
    required this.barrilId,
    required this.produtoId,
    required this.quantidadeProgramada,
    required this.volumeNecessario,
    this.quantidadeProduzida = 0,
    this.dataFimProducao,
    required this.dataInicioProducao,
    required this.criadoEm,
    this.editadoEm,
    required this.statusSincronizacao,
  });

  int get quantidadePendente {
    return quantidadeProgramada - quantidadeProduzida;

    // TODO - ver se isso é necessário
    // return quantidadeProgramada - quantidadeProduzida > 0
    //     ? quantidadeProgramada - quantidadeProduzida
    //     : 0;
  }

  ProducaoEntity copyWith({
    String? id,
    String? gradeId,
    StatusProducao? status,
    String? barrilId,
    String? produtoId,
    int? quantidadeProgramada,
    int? quantidadeProduzida,
    double? volumeNecessario,
    DateTime? dataInicioProducao,
    DateTime? dataFimProducao,
    DateTime? criadoEm,
    DateTime? editadoEm,
    StatusSincronizacao? statusSincronizacao,
  }) {
    return ProducaoEntity(
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

  @override
  String toString() {
    return 'ProducaoEntity('
        'id: $id'
        'gradeId: $gradeId'
        'status: $status'
        'barrilId: $barrilId'
        'produtoId: $produtoId'
        'quantidadeProgramada: $quantidadeProgramada'
        'quantidadeProduzida: $quantidadeProduzida'
        'volumeNecessario: $volumeNecessario'
        'dataInicioProducao: $dataInicioProducao'
        'dataFimProducao: $dataFimProducao'
        'criadoEm: $criadoEm'
        'editadoEm: $editadoEm'
        'statusSincronizacao: $statusSincronizacao'
        ')';
  }
}
