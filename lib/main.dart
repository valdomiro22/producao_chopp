import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:producao_chopp/routes/app_route_provider.dart';
import 'package:producao_chopp/theme/app_theme.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouteProvider);

    return MaterialApp.router(
      title: 'Flutter Demo',

      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,

      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
