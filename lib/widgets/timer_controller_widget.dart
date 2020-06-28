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
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CropsBloc, CropsState>(builder: (context, state) {
      return Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("${widget.crop.picture} (${widget.crop.name.toUCFirst()})",
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
                  onPressed: widget.timerService.isRunning(widget.index)
                      ? null
                      : () => start(widget.index)),
              IconButton(
                  icon: Icon(Icons.stop, size: 32),
                  onPressed: !widget.timerService.isRunning(widget.index)
                      ? null
                      : () => stop(widget.index)),
              IconButton(
                  icon: Icon(Icons.refresh, size: 32),
                  onPressed: !widget.timerService.isRunning(widget.index)
                      ? null
                      : () => restart(widget.index)),
            ],
          ))
        ],
      );
    });
  }

  void stop(int index) {
    widget.timerService.stop(index);
    getIt<IStorage>().storeTimer(widget.crop, 0);
    context.bloc<CropsBloc>().add(CropsEvent.timerChanged(0));
    setState(() {});
  }

  void start(int index) {
    widget.timerService.start(index);
    getIt<IStorage>().storeTimer(widget.crop,
        widget.crop.timer == 0 ? widget.crop.originalTimer : widget.crop.timer);
    context.bloc<CropsBloc>().add(CropsEvent.timerChanged(widget.crop.timer));
    setState(() {});
  }

  void restart(int index) {
    widget.timerService.restart(index);
    getIt<IStorage>().storeTimer(widget.crop, widget.crop.originalTimer);
    context
        .bloc<CropsBloc>()
        .add(CropsEvent.timerChanged(widget.crop.originalTimer));
    setState(() {});
  }
}
