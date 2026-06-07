import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:producao_chopp/features/barril/presentation/screens/listabarris/lista_barris_screen.dart';
import 'package:producao_chopp/home_screen.dart';
import '../features/barril/presentation/screens/editarbarril/adicionar_barril_screen.dart';
import 'app_routes_names.dart';

class AppRoutes {

  // Home
  static final List<RouteBase> routes = [

    GoRoute(path: AppRoutesNames.home, builder: (context, state) => HomeScreen()),

    // GoRoute(
    //   path: '${AppRoutesNames.home}/:producaoId',
    //   builder: (context, state) {
    //     final producaoId = state.pathParameters['producaoId']!;
    //
    //     return HomeScreen(producaoId: producaoId);
    //   },
    // ),
    //
    // Barris
    GoRoute(path: AppRoutesNames.listaBarris, builder: (context, state) => ListaBarrisScreen()),

    GoRoute(
      path: AppRoutesNames.adicionarBarril,
      builder: (context, state) => AdicionarBarrilScreen(),
    ),

    // GoRoute(
    //   path: '${AppRoutesNames.editarBarril}/:barrilId',
    //   builder: (context, state) {
    //     final barrilId = state.pathParameters['barrilId']!;
    //
    //     return EditarBarrilScreen(barrilId: barrilId);
    //   },
    // ),
    //
    // // Produto
    // GoRoute(path: AppRoutesNames.listaProdutos, builder: (context, state) => ListaProdutosScreen()),
    //
    // GoRoute(
    //   path: AppRoutesNames.adicionarProduto,
    //   builder: (context, state) => AdicionarProdutoScreen(),
    // ),
    //
    // GoRoute(
    //   path: '${AppRoutesNames.editarProduto}/:produtoId',
    //   builder: (context, state) {
    //     final produtoId = state.pathParameters['produtoId']!;
    //
    //     return EditarProdutoScreen(produtoId: produtoId);
    //   },
    // ),
    //
    // // Grade
    // GoRoute(path: AppRoutesNames.listaGrades, builder: (context, state) => ListaGradesScreen()),
    //
    // GoRoute(
    //   path: AppRoutesNames.adicionarGrade,
    //   builder: (context, state) => AdicionarGradeScreen(),
    // ),
    //
    // GoRoute(
    //   path: '${AppRoutesNames.editarGrade}/:gradeId',
    //   builder: (context, state) {
    //     final gradeId = state.pathParameters['gradeId']!;
    //
    //     return EditarGradeScreen(gradeId: gradeId);
    //   },
    // ),
    //
    // // Produção
    // GoRoute(
    //   path: '${AppRoutesNames.listaProducoes}/:gradeId',
    //   builder: (context, state) {
    //     final gradeId = state.pathParameters['gradeId']!;
    //
    //     return ListaProducoesScreen(gradeId: gradeId);
    //   },
    // ),
    //
    // GoRoute(
    //   path: '${AppRoutesNames.adicionarProducao}/:gradeId',
    //   builder: (context, state) {
    //     final gradeId = state.pathParameters['gradeId']!;
    //
    //     return AdicionarProducaoScreen(gradeId: gradeId);
    //   },
    // ),
    //
    // GoRoute(
    //   path: '${AppRoutesNames.editarProducao}/:producaoId',
    //   builder: (context, state) {
    //     final producaoId = state.pathParameters['producaoId']!;
    //
    //     return EditarProducaoScreen(producaoId: producaoId);
    //   },
    // ),

  ];

  static Widget _notFoundScreen(String message) {
    return Scaffold(body: Center(child: Text(message)));
  }
}
