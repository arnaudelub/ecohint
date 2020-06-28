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
      print(_timers[index]['on']);
      print(_timers[index]);

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
    print("Starting service");
    try {
      if (_timers[index]['on']) return;

      _timers[index] = {
        'on': true,
        'timer': Timer.periodic(Duration(seconds: 1), _onTick)
      };
      _watch.start();

      notifyListeners();
      print(_timers.length);
    } catch (_) {
      _timers[index] = {
        'on': true,
        'timer': Timer.periodic(Duration(seconds: 1), _onTick)
      };
      _watch.start();

      print(_timers.length);
      notifyListeners();
    }
  }

  void stop(int index) {
    Timer _timer = _timers[index]['timer'];
    _timer?.cancel();
    _timer = null;
    _timers[index]['on'] = false;
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
    print("Adding timer with $hasTimer");
    _timers.add({
      'on': hasTimer,
      'timer': Timer.periodic(Duration(seconds: 1), _onTick)
    });
  }

  void resetTimers() {
    _timers = List();
  }

  static CropTimerService of(BuildContext context) {
    var provider = context.inheritFromWidgetOfExactType(CropTimerProvider)
        as CropTimerProvider;
    return provider.service;
  }
}
