// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:shared_preferences/shared_preferences.dart';
import 'package:ecohint/core/storage_injectable.dart';
import 'package:ecohint/core/storage.dart';
import 'package:ecohint/screens/bloc/crops/crops_bloc.dart';
import 'package:get_it/get_it.dart';

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final storageInjectableModule = _$StorageInjectableModule();
  final sharedPreferences = await storageInjectableModule.storage;
  g.registerFactory<SharedPreferences>(() => sharedPreferences);
  g.registerLazySingleton<IStorage>(() => Storage(g<SharedPreferences>()));
  g.registerFactory<CropsBloc>(() => CropsBloc(g<IStorage>()));
}

class _$StorageInjectableModule extends StorageInjectableModule {}
