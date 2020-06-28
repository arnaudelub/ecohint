import 'package:ecohint/core/crop_timer_service.dart';
import 'package:ecohint/injections.dart';
import 'package:ecohint/screens/bloc/crops/crops_bloc.dart';
import 'package:ecohint/widgets/timer_controller_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CropsBloc>()..add(CropsEvent.getCrops()),
      child: BlocBuilder<CropsBloc, CropsState>(builder: (context, state) {
        if (state.crops.isEmpty) {
          return Center(child: Text("No timers yet!"));
        }
        final CropTimerService timerService = getIt<CropTimerService>();
        print(state.crops);
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView.builder(
            itemCount: state.crops.length,
            itemBuilder: (context, int index) {
              print("doing index $index");
              print("index set to $index, crop is ${state.crops[index]}");
              return TimerControllerWidget(
                  crop: state.crops[index],
                  timerService: timerService,
                  index: index);
            },
          ),
        );
      }),
    );
  }
}
