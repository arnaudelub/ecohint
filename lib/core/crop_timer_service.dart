import 'dart:async';
import 'package:ecohint/core/crop_timer_provider.dart';
import 'package:flutter/material.dart';

class CropTimerService extends ChangeNotifier {
  Stopwatch _watch;
  List<Timer> _timers;
  int index;

  Duration get currentDuration => _currentDuration;
  Duration _currentDuration = Duration.zero;

  bool get isRunning => _timers[index] != null;

  TimerService() {
    _watch = Stopwatch();
  }

  void _onTick(Timer timer) {
    _currentDuration = _watch.elapsed;

    // notify all listening widgets
    notifyListeners();
  }

  void start() {
    print("Starting timer at index $index");
    if (_timers[index] != null) return;

    _timers[index] = Timer.periodic(Duration(seconds: 1), _onTick);
    _watch.start();

    notifyListeners();
  }

  void stop() {
    Timer _timer = _timers[index];
    _timer?.cancel();
    _timer = null;
    _watch.stop();
    _currentDuration = _watch.elapsed;

    notifyListeners();
  }

  void reset() {
    stop();
    _watch.reset();
    _currentDuration = Duration.zero;

    notifyListeners();
  }

  void setIndex(int index) {
    index = index;
  }

  static CropTimerService of(BuildContext context) {
    var provider = context.inheritFromWidgetOfExactType(CropTimerProvider)
        as CropTimerProvider;
    return provider.service;
  }
}
