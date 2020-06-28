import 'package:ecohint/core/crop_timer_service.dart';
import 'package:ecohint/models/crop.dart';
import 'package:flutter/material.dart';

class TimerControllerWidget extends StatelessWidget {
  final Crop crop;
  final CropTimerService timerService;
  const TimerControllerWidget({Key key, this.crop, this.timerService})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    print("in build with ${timerService.index}");
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(crop.name),
        Expanded(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
                icon: Icon(Icons.play_arrow),
                onPressed:
                    timerService.isRunning ? null : () => timerService.start()),
            IconButton(
                icon: Icon(Icons.stop),
                onPressed:
                    !timerService.isRunning ? null : () => timerService.stop()),
            IconButton(
                icon: Icon(Icons.refresh),
                onPressed: !timerService.isRunning
                    ? null
                    : () => timerService.reset()),
          ],
        ))
      ],
    );
  }
}
