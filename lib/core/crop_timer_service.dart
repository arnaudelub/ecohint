import 'dart:async';
import 'package:ecohint/core/crop_timer_provider.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CropTimerService extends ChangeNotifier {
  Stopwatch _watch;
  List<Timer> _timers = List();

  Duration get currentDuration => _currentDuration;
  Duration _currentDuration = Duration.zero;

  bool isRunning(int index) {
    print("isRunning $index????");
    print(_timers.length);
    try {
      return _timers[index] != null;
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
      if (_timers[index] != null) return;

      _timers.add(Timer.periodic(Duration(seconds: 1), _onTick));
      _watch.start();

      notifyListeners();
      print(_timers.length);
    } catch (_) {
      _timers.add(Timer.periodic(Duration(seconds: 1), _onTick));
      _watch.start();

      print(_timers.length);
      notifyListeners();
    }
  }

  void stop(int index) {
    Timer _timer = _timers[index];
    _timer?.cancel();
    _timer = null;
    _timers.removeAt(index);
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

  static CropTimerService of(BuildContext context) {
    var provider = context.inheritFromWidgetOfExactType(CropTimerProvider)
        as CropTimerProvider;
    return provider.service;
  }
}
