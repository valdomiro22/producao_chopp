import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'app_routes.dart';
import 'app_routes_names.dart';

final appRouteProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: AppRoutesNames.listaGrades,
    routes: AppRoutes.routes
  );
});
