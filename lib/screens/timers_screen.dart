import 'package:ecohint/screens/bloc/crops/crops_bloc.dart';
import 'package:ecohint/widgets/timer_controller_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimersScreen extends StatelessWidget {
  const TimersScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CropsBloc, CropsState>(builder: (context, state) {
      return Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(
          itemCount: state.crops.length,
          itemBuilder: (context, int index) {
            return TimerControllerWidget(
                crop: state.crops[index], index: index);
          },
        ),
      );
    });
  }
}
