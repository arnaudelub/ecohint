import 'package:ecohint/models/crop.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class IStorage {
  Future<void> storeCrop(Crop crops);
  Future<Crop> getCrops();
  Future<Crop> getCrop(String key);
  Future<void> removeCrop(String key);
}

class Storage implements IStorage {
  final SharedPreferences storage;

  Storage(this.storage);
  @override
  Future<Crop> getCrop(String key) {
    // TODO: implement getCrop
    throw UnimplementedError();
  }

  @override
  Future<Crop> getCrops() {
    // TODO: implement getCrops
    throw UnimplementedError();
  }

  @override
  Future<void> removeCrop(String key) {
    // TODO: implement removeCrop
    throw UnimplementedError();
  }

  @override
  Future<void> storeCrop(Crop crops) {
    // TODO: implement storeCrop
    throw UnimplementedError();
  }
}
