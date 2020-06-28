part of 'crops_timer_bloc.dart';

@freezed
abstract class CropsTimerEvent with _$CropsTimerEvent {
  const factory CropsTimerEvent.timerStarted() = TimerStarted;
  const factory CropsTimerEvent.timerStopped() = TimerStopped;
  const factory CropsTimerEvent.timerPaused() = TimerPaused;
  const factory CropsTimerEvent.timerRestarted() = TimerRestarted;
}
