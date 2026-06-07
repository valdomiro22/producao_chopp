import '../models/producao_local_model.dart';

abstract class ProducaoLocalDataSource {
  Future<void> insert(ProducaoLocalModel producao);

  Future<void> update(ProducaoLocalModel producao);

  Future<void> delete(ProducaoLocalModel producao);

  Future<List<ProducaoLocalModel>> getAll();

  Future<ProducaoLocalModel?> getOneById(String producaoId);

  Future<void> updateStatusSincronizacao({
    required String producaoId,
    required String statusSincronizacao,
  });
}
