import 'package:producao_chopp/features/anotacoes/data/models/anotacao_local_model.dart';
import 'package:producao_chopp/features/anotacoes/domain/entities/movimentacao_entity.dart';

extension AnotacaoLocalModelMapper on AnotacaoLocalModel {
  AnotacaoEntity toEntity() {
    return AnotacaoEntity(
      id: id,
      producaoId: producaoId,
      turnoId: turnoId,
      horarioReferente: horarioReferente,
      quantidade: quantidade,
      tipo: tipo,
      criadoEm: criadoEm,
      statusSincronizacao: statusSincronizacao,
    );
  }
}

extension AnotacaoEntityMapper on AnotacaoEntity {
  AnotacaoLocalModel toLocalModel() {
    return AnotacaoLocalModel(
      id: id,
      producaoId: producaoId,
      turnoId: turnoId,
      horarioReferente: horarioReferente,
      quantidade: quantidade,
      tipo: tipo,
      criadoEm: criadoEm,
      statusSincronizacao: statusSincronizacao,
    );
  }
}
