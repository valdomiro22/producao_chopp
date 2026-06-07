import '../models/barril_local_model.dart';

abstract class BarrilLocalDataSource {
  Future<void> insert(BarrilLocalModel barril);

  Future<void> update(BarrilLocalModel barril);

  Future<void> delete(BarrilLocalModel barril);

  Future<List<BarrilLocalModel>> getAll();

  Future<BarrilLocalModel?> getOneById(String produtoId);

  Future<void> updateStatusSincronizacao({
    required String barrilId,
    required String statusSincronizacao,
  });
}
