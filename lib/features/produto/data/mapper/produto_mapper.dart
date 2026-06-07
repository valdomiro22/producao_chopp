import '../../domain/entities/produto_entity.dart';
import '../models/produto_local_model.dart';

extension ProdutoLocalModelMapper on ProdutoLocalModel {
  ProdutoEntity toEntity() {
    return ProdutoEntity(
      id: id,
      nome: nome,
      prazoValidade: prazoValidade,
      criadoEm: criadoEm,
      editadoEm: editadoEm,
      statusSincronizacao: statusSincronizacao,
    );
  }
}

extension ProdutoEntityMapper on ProdutoEntity {
  ProdutoLocalModel toLocalModel() {
    return ProdutoLocalModel(
      id: id,
      nome: nome,
      prazoValidade: prazoValidade,
      criadoEm: criadoEm,
      editadoEm: editadoEm,
      statusSincronizacao: statusSincronizacao,
    );
  }
}
