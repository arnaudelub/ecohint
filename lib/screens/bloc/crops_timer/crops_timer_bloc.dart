import 'dart:async';

import 'package:ecohint/core/crop_timer_service.dart';
import 'package:ecohint/core/storage.dart';
import 'package:ecohint/models/crop.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

part 'crops_timer_event.dart';
part 'crops_timer_state.dart';

part 'crops_timer_bloc.freezed.dart';

@injectable
class CropsTimerBloc extends Bloc<CropsTimerEvent, CropsTimerState> {
  final IStorage _storage;

  CropsTimerBloc(this._storage);
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
    }, tickReceived: (TickReceived value) async* {
      _storage.storeTimer(value.crop, value.timer);
    });
  }
}
