import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/barril_entity.dart';
import '../repositories/barril_repository.dart';

class GetAllBarrisUseCase {
  final BarrilRepository _repository;

  GetAllBarrisUseCase(this._repository);

  Future<Either<Failure, List<BarrilEntity>>> call() async {
    return await _repository.getAll();
  }
}
