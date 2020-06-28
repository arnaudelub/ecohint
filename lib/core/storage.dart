import 'dart:convert';

import 'package:ecohint/models/crop.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class IStorage {
  Future<void> storeCrop(Crop crop);
  List<Crop> getCrops();
  Crop getCrop(String key);
  Future<void> removeCrop(Crop crop);
  Future<void> removeCrops();
  Future<void> storeTimer(Crop crop, int timer);
  int getTimer(Crop crop);
  Future<void> removeTimer(Crop crop);
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
      for (final key in cropsKey) {
        final String json = _storage.getString(key);
        final Map<String, dynamic> decoded =
            jsonDecode(json) as Map<String, dynamic>;
        decoded['timer'] = getTimer(Crop.fromJson(decoded));
        cropsList.add(Crop.fromJson(decoded));
      }
      return cropsList;
    } catch (e) {
      throw 'Error $e';
    }
  }

  @override
  Future<void> removeCrop(Crop crop) async {
    try {
      await _storage.remove('crop_${crop.name}');
      await removeTimer(crop);
    } catch (_) {
      throw 'Error';
    }
  }

  @override
  Future<void> storeCrop(Crop crop) async {
    try {
      await _storage.setString(
          'crop_${crop.name}', jsonEncode(crop.toJson()).toString());
      await storeTimer(crop, crop.timer);
    } catch (_) {
      throw 'Error';
    }
  }

  @override
  Future<void> removeCrops() async {
    await _storage.clear();
  }

  @override
  Future<void> storeTimer(Crop crop, int timer) async {
    try {
      await _storage.setInt('timer_${crop.name}', timer);
    } catch (_) {
      throw 'Error';
    }
  }

  @override
  Future<void> removeTimer(Crop crop) async {
    try {
      await _storage.remove('timer_${crop.name}');
    } catch (_) {
      throw 'Error';
    }
  }

  @override
  int getTimer(Crop crop) {
    try {
      final int timer = _storage.getInt('timer_${crop.name}');
      return timer;
    } catch (_) {
      throw 'Error';
    }
  }
}
