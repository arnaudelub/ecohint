import 'package:ecohint/core/crop_timer_service.dart';
import 'package:ecohint/core/storage.dart';
import 'package:ecohint/injections.dart';
import 'package:ecohint/models/crop.dart';
import 'package:ecohint/screens/bloc/crops/crops_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecohint/core/string_extensions.dart';

class TimerControllerWidget extends StatefulWidget {
  final Crop crop;
  final int index;
  final CropTimerService timerService;
  const TimerControllerWidget(
      {Key key, this.crop, this.timerService, this.index})
      : super(key: key);

  @override
  _TimerControllerWidgetState createState() => _TimerControllerWidgetState();
}

class _TimerControllerWidgetState extends State<TimerControllerWidget> {
  int index;
  CropTimerService timerService;
  Crop crop;
  @override
  void initState() {
    crop = widget.crop;
    timerService = widget.timerService;
    index = widget.index;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CropsBloc, CropsState>(builder: (context, state) {
      if (state.crops.isEmpty) {
        return Center(child: CircularProgressIndicator());
      }
      return Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("${crop.picture.split('_')[0]} (${crop.name.toUCFirst()})",
              style: TextStyle(
                  fontSize: 22,
                  letterSpacing: 0.21,
                  fontWeight: FontWeight.w600)),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              IconButton(
                  icon: Icon(Icons.play_arrow, size: 32),
                  onPressed: timerService.isRunning(index)
                      ? null
                      : () => start(index)),
              IconButton(
                  icon: Icon(Icons.stop, size: 32),
                  onPressed: !timerService.isRunning(index)
                      ? null
                      : () => stop(index)),
              IconButton(
                  icon: Icon(Icons.refresh, size: 32),
                  onPressed: !timerService.isRunning(index)
                      ? null
                      : () => restart(index)),
            ],
          ))
        ],
      );
    });
  }

  void stop(int index) {
    print("Stpoping crop $crop at index $index");
    timerService.stop(index);
    getIt<IStorage>().storeTimer(crop, 0);
    context.bloc<CropsBloc>().add(CropsEvent.timerChanged(0, index: index));
    setState(() {});
  }

  void start(int index) {
    print("starting index $index");
    timerService.start(index);
    getIt<IStorage>()
        .storeTimer(crop, crop.timer == 0 ? crop.originalTimer : crop.timer);
    context.bloc<CropsBloc>().add(CropsEvent.timerChanged(
        crop.timer == 0 ? crop.originalTimer : crop.timer,
        index: index));
    setState(() {});
  }

  void restart(int index) {
    timerService.restart(index);
    getIt<IStorage>().storeTimer(crop, crop.originalTimer);
    context
        .bloc<CropsBloc>()
        .add(CropsEvent.timerChanged(crop.originalTimer, index: index));
    setState(() {});
  }
}
