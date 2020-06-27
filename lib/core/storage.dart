import 'dart:convert';

import 'package:ecohint/models/crop.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class IStorage {
  Future<void> storeCrop(Crop crop);
  List<Crop> getCrops();
  Crop getCrop(String key);
  Future<void> removeCrop(String key);
}

@LazySingleton(as: IStorage)
class Storage implements IStorage {
  final SharedPreferences _storage;

  Storage(this._storage);
  @override
  Crop getCrop(String key) {
    try {
      final Map<String, dynamic> json =
          jsonDecode(_storage.getString(key)) as Map<String, dynamic>;
      final Crop crop = Crop.fromJson(json);
      return crop;
    } catch (_) {
      throw 'Error';
    }
  }

  @override
  List<Crop> getCrops() {
    try {
      final cropsList = <Crop>[];
      final allKeys = _storage.getKeys();
      final List<String> cropsKey =
          allKeys.where((key) => key.contains('crop')).toList();
      cropsKey.map((key) async {
        final json = _storage.getString(key) as Map<String, dynamic>;
        cropsList.add(Crop.fromJson(json));
      });
      return cropsList;
    } catch (_) {
      throw 'Error';
    }
  }

  @override
  Future<void> removeCrop(String key) async {
    try {
      await _storage.remove(key);
    } catch (_) {
      throw 'Error';
    }
  }

  @override
  Future<void> storeCrop(Crop crop) async {
    try {
      await _storage.setString('crop_${crop.name}', crop.toJson().toString());
    } catch (_) {
      throw 'Error';
    }
  }
}
