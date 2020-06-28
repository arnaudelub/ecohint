import 'package:flutter/material.dart';
import 'crop_timer_service.dart';

class CropTimerProvider extends InheritedWidget {
  const CropTimerProvider({Key key, this.service, Widget child})
      : super(key: key, child: child);

  final CropTimerService service;

  @override
  bool updateShouldNotify(CropTimerProvider old) => service != old.service;
}
