import 'dart:async';

import 'package:ecohint/core/crop_timer_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

part 'crops_timer_event.dart';
part 'crops_timer_state.dart';

part 'crops_timer_bloc.freezed.dart';

@injectable
class CropsTimerBloc extends Bloc<CropsTimerEvent, CropsTimerState> {
  @override
  CropsTimerState get initialState => const CropsTimerState.initial();

  @override
  Stream<CropsTimerState> mapEventToState(
    CropsTimerEvent event,
  ) async* {
    yield* event.map(timerRestarted: (TimerRestarted value) async* {
      value.timerService.reset();
    }, timerStopped: (TimerStopped value) async* {
      value.timerService.stop();
    }, timerStarted: (TimerStarted value) async* {
      value.timerService.start();
    });
  }
}
