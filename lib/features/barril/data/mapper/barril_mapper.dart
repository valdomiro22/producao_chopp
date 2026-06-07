import '../../domain/entities/barril_entity.dart';
import '../models/barril_local_model.dart';

extension BarrilLocalModelMapper on BarrilLocalModel {
  BarrilEntity toEntity() {
    return BarrilEntity(
      id: id,
      nome: nome,
      volume: volume,
      criadoEm: criadoEm,
      editadoEm: editadoEm,
      descartavel: descartavel,
      statusSincronizacao: statusSincronizacao,
    );
  }
}

extension BarrilEntityMapper on BarrilEntity {
  BarrilLocalModel toLocalModel() {
    return BarrilLocalModel(
      id: id,
      nome: nome,
      volume: volume,
      criadoEm: criadoEm,
      editadoEm: editadoEm,
      descartavel: descartavel,
      statusSincronizacao: statusSincronizacao,
    );
  }
}
