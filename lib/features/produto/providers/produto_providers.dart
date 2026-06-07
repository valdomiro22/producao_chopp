import 'package:producao_chopp/core/database/app_database_provider.dart';
import 'package:producao_chopp/features/produto/data/dao/produto_dao.dart';
import 'package:producao_chopp/features/produto/data/localdatasource/produto_local_data_source_impl.dart';
import 'package:producao_chopp/features/produto/data/repositories/produto_repository_impl.dart';
import 'package:producao_chopp/features/produto/domain/repositories/produto_repository.dart';
import 'package:producao_chopp/features/produto/domain/usecases/delete_produto_use_case.dart';
import 'package:producao_chopp/features/produto/domain/usecases/get_all_produtos_use_case.dart';
import 'package:producao_chopp/features/produto/domain/usecases/get_one_produto_use_case.dart';
import 'package:producao_chopp/features/produto/domain/usecases/insert_produto_use_case.dart';
import 'package:producao_chopp/features/produto/domain/usecases/update_produto_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/localdatasource/produto_local_data_source.dart';

part 'produto_providers.g.dart';

@riverpod
ProdutoDao produtoDao(Ref ref) {
  final db = ref.watch(appDatabaseProvider);
  return ProdutoDao(db);
}

@riverpod
ProdutoLocalDataSource produtoLocalDataSource(Ref ref) {
  final dao = ref.watch(produtoDaoProvider);
  return ProdutoLocalDataSourceImpl(dao);
}

@riverpod
ProdutoRepository produtoRepository(Ref ref) {
  final dataSource = ref.watch(produtoLocalDataSourceProvider);
  return ProdutoRepositoryImpl(dataSource);
}

// UseCases --------------------------------------------------------------------
@riverpod
InsertProdutoUseCase insertProdutoUseCase(Ref ref) {
  final repository = ref.watch(produtoRepositoryProvider);
  return InsertProdutoUseCase(repository);
}

@riverpod
UpdateProdutoUseCase updateProdutoUseCase(Ref ref) {
  final repository = ref.watch(produtoRepositoryProvider);
  return UpdateProdutoUseCase(repository);
}

@riverpod
GetOneProdutoUseCase getOneProdutoUseCase(Ref ref) {
  final repository = ref.watch(produtoRepositoryProvider);
  return GetOneProdutoUseCase(repository);
}

@riverpod
DeleteOneProdutoUseCase deleteOneProdutoUseCase(Ref ref) {
  final repository = ref.watch(produtoRepositoryProvider);
  return DeleteOneProdutoUseCase(repository);
}

@riverpod
GetAllProdutosUseCase getAllProdutosUseCase(Ref ref) {
  final repository = ref.watch(produtoRepositoryProvider);
  return GetAllProdutosUseCase(repository);
}
