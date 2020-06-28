import 'dart:async';
import 'package:ecohint/core/crop_timer_provider.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CropTimerService extends ChangeNotifier {
  Stopwatch _watch;
  List<Map<String, dynamic>> _timers = List();

  Duration get currentDuration => _currentDuration;
  Duration _currentDuration = Duration.zero;

  bool isRunning(int index) {
    try {
      return _timers[index] != null && _timers[index]['on'];
    } catch (_) {
      return false;
    }
  }

  CropTimerService() {
    _watch = Stopwatch();
  }

  void _onTick(Timer timer) {
    _currentDuration = _watch.elapsed;

    // notify all listening widgets
    notifyListeners();
  }

  void start(int index) {
    try {
      if (_timers[index]['on']) return;

      _timers[index] = {
        'on': true,
        'timer': Timer.periodic(Duration(seconds: 1), _onTick)
      };
      _watch.start();

      notifyListeners();
    } catch (e) {
      print("error $e");
      _timers[index] = {
        'on': true,
        'timer': Timer.periodic(Duration(seconds: 1), _onTick)
      };
      _watch.start();

      notifyListeners();
    }
  }

  void stop(int index) {
    Timer _timer = _timers[index]['timer'];
    _timer?.cancel();
    _timer = null;
    _timers[index]['on'] = false;
    _timers[index]['timer'] = _timer;
    _watch.stop();
    _currentDuration = _watch.elapsed;

    notifyListeners();
  }

  void reset(int index) {
    stop(index);
    _watch.reset();
    _currentDuration = Duration.zero;

    notifyListeners();
  }

  void restart(int index) {
    stop(index);
    _watch.reset();
    _currentDuration = Duration.zero;
    start(index);
    notifyListeners();
  }

  void addingTimer(bool hasTimer) {
    _timers.add({
      'on': hasTimer,
      'timer': hasTimer ? Timer.periodic(Duration(seconds: 1), _onTick) : null
    });
  }

  void resetTimers() {
    _timers = List();
  }
}
