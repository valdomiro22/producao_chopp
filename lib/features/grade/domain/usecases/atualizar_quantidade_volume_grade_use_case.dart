import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/helper/producao_helper.dart';
import '../entities/grade_entity.dart';
import '../repositories/grade_repository.dart';

class AtualizarQuantidadeVolumeGradeUseCase {
  final GradeRepository _repository;

  AtualizarQuantidadeVolumeGradeUseCase(this._repository);

  Future<Either<Failure, Unit>> call(int quantidade, GradeEntity grade, int volumeBarril) async {
    if (quantidade == 0) return Left(UnknownFailure('A quantidade não pode ser zéro'));

    final novaQuantidade = quantidade + grade.quantidadeBarris;
    final volumeNecessario = ProducaoHelper.calcularVolumeNecessarioParaGrade(
      quantidadeDeBarris: novaQuantidade,
      volumeBarril: volumeBarril,
    );

    final gradeAtualizada = grade.copyWith(
      quantidadeBarris: novaQuantidade,
      volumeHlNecessario: volumeNecessario,
    );

    return await _repository.update(gradeAtualizada);
  }
}
