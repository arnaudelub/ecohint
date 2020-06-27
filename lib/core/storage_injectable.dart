import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class StorageInjectableModule {
  @lazySingleton
  @preResolve
  Future<SharedPreferences> get storage => SharedPreferences.getInstance();
}
