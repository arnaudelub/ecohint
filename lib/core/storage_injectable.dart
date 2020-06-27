import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class StorageInjectableModule {
  @lazySingleton
  Future<SharedPreferences> get storage async =>
      await SharedPreferences.getInstance();
}
