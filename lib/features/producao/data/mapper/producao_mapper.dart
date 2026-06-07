import '../../domain/entities/producao_entity.dart';
import '../models/producao_local_model.dart';

extension ProducaoLocalModelMapper on ProducaoLocalModel {
  ProducaoEntity toEntity() {
    return ProducaoEntity(
      id: id,
      gradeId: gradeId,
      status: status,
      barrilId: barrilId,
      produtoId: produtoId,
      quantidadeProgramada: quantidadeProgramada,
      quantidadeProduzida: quantidadeProduzida,
      dataFimProducao: dataFimProducao,
      criadoEm: criadoEm,
      editadoEm: editadoEm,
      dataInicioProducao: dataInicioProducao,
      volumeNecessario: volumeNecessario,
      statusSincronizacao: statusSincronizacao,
    );
  }
}

extension ProducaoEntityMapper on ProducaoEntity {
  ProducaoLocalModel toLocalModel() {
    return ProducaoLocalModel(
      id: id,
      gradeId: gradeId,
      status: status,
      barrilId: barrilId,
      produtoId: produtoId,
      quantidadeProgramada: quantidadeProgramada,
      quantidadeProduzida: quantidadeProduzida,
      volumeNecessario: volumeNecessario,
      dataFimProducao: dataFimProducao,
      criadoEm: criadoEm,
      dataInicioProducao: dataInicioProducao,
      editadoEm: editadoEm,
      statusSincronizacao: statusSincronizacao,
    );
  }
}
