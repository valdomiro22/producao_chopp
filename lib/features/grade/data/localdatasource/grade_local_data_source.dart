
import '../models/grade_local_model.dart';

abstract class GradeLocalDataSource {
  Future<void> insert(GradeLocalModel grade);

  Future<void> update(GradeLocalModel grade);

  Future<void> delete(GradeLocalModel grade);

  Future<List<GradeLocalModel>> getAll();

  Future<GradeLocalModel?> getOneById(String gradeId);

  Future<void> updateStatusSincronizacao({
    required String gradeId,
    required String statusSincronizacao,
  });
}
