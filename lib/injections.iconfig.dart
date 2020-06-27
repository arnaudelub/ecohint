// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:shared_preferences/shared_preferences.dart';
import 'package:ecohint/core/storage_injectable.dart';
import 'package:ecohint/core/storage.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final storageInjectableModule = _$StorageInjectableModule();
  g.registerLazySingletonAsync<SharedPreferences>(
      () => storageInjectableModule.storage);
  g.registerLazySingleton<IStorage>(() => Storage(g<SharedPreferences>()));
}

class _$StorageInjectableModule extends StorageInjectableModule {}
