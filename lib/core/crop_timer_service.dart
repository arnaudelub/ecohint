import 'dart:async';
import 'package:ecohint/core/crop_timer_provider.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class CropTimerService extends ChangeNotifier {
  Stopwatch _watch;
  List<Timer> _timers = List();
  int index;

  Duration get currentDuration => _currentDuration;
  Duration _currentDuration = Duration.zero;

  bool get isRunning {
    print("isRunning????");
    return _timers[index] != null;
  }

  CropTimerService() {
    _watch = Stopwatch();
  }

  void _onTick(Timer timer) {
    _currentDuration = _watch.elapsed;

    // notify all listening widgets
    notifyListeners();
  }

  void start() {
    try {
      if (_timers[index] != null) return;

      _timers.add(Timer.periodic(Duration(seconds: 1), _onTick));
      _watch.start();

      notifyListeners();
    } catch (_) {
      _timers.add(Timer.periodic(Duration(seconds: 1), _onTick));
      _watch.start();

      notifyListeners();
    }
  }

  void stop() {
    Timer _timer = _timers[index];
    _timer?.cancel();
    _timer = null;
    _timers.removeAt(index);
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
    print("Setting index $index");
    this.index = index;
  }

  static CropTimerService of(BuildContext context) {
    var provider = context.inheritFromWidgetOfExactType(CropTimerProvider)
        as CropTimerProvider;
    return provider.service;
  }
}
