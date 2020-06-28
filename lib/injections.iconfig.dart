// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:ecohint/core/crop_timer_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ecohint/core/storage_injectable.dart';
import 'package:ecohint/core/storage.dart';
import 'package:ecohint/screens/bloc/crops/crops_bloc.dart';
import 'package:ecohint/screens/bloc/crops_timer/crops_timer_bloc.dart';
import 'package:get_it/get_it.dart';

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final storageInjectableModule = _$StorageInjectableModule();
  g.registerFactory<CropTimerService>(() => CropTimerService());
  final sharedPreferences = await storageInjectableModule.storage;
  g.registerFactory<SharedPreferences>(() => sharedPreferences);
  g.registerLazySingleton<IStorage>(() => Storage(g<SharedPreferences>()));
  g.registerFactory<CropsBloc>(() => CropsBloc(g<IStorage>()));
  g.registerFactory<CropsTimerBloc>(() => CropsTimerBloc(g<IStorage>()));
}

class _$StorageInjectableModule extends StorageInjectableModule {}
