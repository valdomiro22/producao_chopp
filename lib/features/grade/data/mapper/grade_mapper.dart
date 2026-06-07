import '../../domain/entities/grade_entity.dart';
import '../models/grade_local_model.dart';

extension GradeLocalModelMapper on GradeLocalModel {
  GradeEntity toEntity() {
    return GradeEntity(
      id: id,
      numero: numero,
      data: data,
      quantidadeBarris: quantidadeBarris,
      volumeHlNecessario: volumeHlNecessario,
      criadoEm: criadoEm,
      editadoEm: editadoEm,
      statusSincronizacao: statusSincronizacao,
    );
  }
}

extension GradeEntityMapper on GradeEntity {
  GradeLocalModel toLocalModel() {
    return GradeLocalModel(
      id: id,
      numero: numero.toString(),
      data: data,
      quantidadeBarris: quantidadeBarris,
      volumeHlNecessario: volumeHlNecessario,
      criadoEm: criadoEm,
      editadoEm: editadoEm,
      statusSincronizacao: statusSincronizacao,
    );
  }
}