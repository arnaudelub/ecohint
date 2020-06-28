part of 'crops_timer_bloc.dart';

@freezed
abstract class CropsTimerEvent with _$CropsTimerEvent {
  const factory CropsTimerEvent.timerStarted(CropTimerService timerService) =
      TimerStarted;
  const factory CropsTimerEvent.timerStopped(CropTimerService timerService) =
      TimerStopped;
  const factory CropsTimerEvent.timerRestarted(CropTimerService timerService) =
      TimerRestarted;
  const factory CropsTimerEvent.tickReceived(int timer, Crop crop) =
      TickReceived;
}
