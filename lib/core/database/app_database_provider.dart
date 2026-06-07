import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'app_database.dart';

part 'app_database_provider.g.dart';

@riverpod
AppDatabase appDatabase(Ref ref) {
  return AppDatabase.instance;
}