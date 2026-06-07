import 'package:producao_chopp/core/error/app_database_exception.dart';

import '../dao/grade_dao.dart';
import '../models/grade_local_model.dart';
import 'grade_local_data_source.dart';

class GradeLocalDataSourceImpl implements GradeLocalDataSource {
  final GradeDao _dao;

  GradeLocalDataSourceImpl(this._dao);

  @override
  Future<void> delete(GradeLocalModel grade) async {
    try {
      return await _dao.delete(grade);
    } catch (e, stackTrace) {
      throw AppDatabaseException(
        'Erro ao deletar grade no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<List<GradeLocalModel>> getAll() async {
    print('grade-datasource: entro em getAll');
    try {
      print('grade-datasource: tentou buscar');
      return await _dao.getAll();
    } catch (e, stackTrace) {
      print('grade-datasource: deu erro');
      throw AppDatabaseException(
        'Erro ao buscar todos os grades no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<GradeLocalModel?> getOneById(String gradeId) async {
    try {
      return await _dao.getOneById(gradeId);
    } catch (e, stackTrace) {
      throw AppDatabaseException(
        'Erro ao buscar grade no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> insert(GradeLocalModel grade) async {
    try {
      return await _dao.insert(grade);
    } catch (e, stackTrace) {
      throw AppDatabaseException(
        'Erro ao salvar grade no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> update(GradeLocalModel grade) async {
    try {
      await _dao.update(grade);
    } catch (e, stackTrace) {
      throw AppDatabaseException(
        'Erro ao atualizar grade no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> updateStatusSincronizacao({
    required String gradeId,
    required String statusSincronizacao,
  }) async {
    try {
      await _dao.updateStatusSincronizacao(
        gradeId: gradeId,
        statusSincronizacao: statusSincronizacao,
      );
    } catch (e, stackTrace) {
      throw AppDatabaseException(
        'Erro ao atualizar status de sincronização no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }
}
