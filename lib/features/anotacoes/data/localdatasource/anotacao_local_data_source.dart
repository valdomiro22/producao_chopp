import 'package:producao_chopp/features/anotacoes/data/models/anotacao_local_model.dart';

abstract class AnotacaoLocalDataSource {
  Future<void> insert(AnotacaoLocalModel anotacao);

  Future<void> update(AnotacaoLocalModel anotacao);

  Future<void> delete(AnotacaoLocalModel anotacao);

  Future<List<AnotacaoLocalModel>> getAllAnotacoesOfProducao(String producaoId);

  Future<AnotacaoLocalModel?> getOneById(String anotacaoId);

  Future<void> updateStatusSincronizacao({
    required String anotacaoId,
    required String statusSincronizacao,
  });

  Future<List<AnotacaoLocalModel>> getAllAnotacoesOfHorario({
    required String producaoId,
    required String horarioReferente,
  });
}
