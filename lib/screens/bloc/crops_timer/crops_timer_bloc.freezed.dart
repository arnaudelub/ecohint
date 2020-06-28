// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'crops_timer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CropsTimerEventTearOff {
  const _$CropsTimerEventTearOff();

  TimerStarted timerStarted(CropTimerService timerService) {
    return TimerStarted(
      timerService,
    );
  }

  TimerStopped timerStopped(CropTimerService timerService) {
    return TimerStopped(
      timerService,
    );
  }

  TimerRestarted timerRestarted(CropTimerService timerService) {
    return TimerRestarted(
      timerService,
    );
  }

  TickReceived tickReceived(int timer, Crop crop) {
    return TickReceived(
      timer,
      crop,
    );
  }
}

// ignore: unused_element
const $CropsTimerEvent = _$CropsTimerEventTearOff();

mixin _$CropsTimerEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result timerStarted(CropTimerService timerService),
    @required Result timerStopped(CropTimerService timerService),
    @required Result timerRestarted(CropTimerService timerService),
    @required Result tickReceived(int timer, Crop crop),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result timerStarted(CropTimerService timerService),
    Result timerStopped(CropTimerService timerService),
    Result timerRestarted(CropTimerService timerService),
    Result tickReceived(int timer, Crop crop),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result timerStarted(TimerStarted value),
    @required Result timerStopped(TimerStopped value),
    @required Result timerRestarted(TimerRestarted value),
    @required Result tickReceived(TickReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result timerStarted(TimerStarted value),
    Result timerStopped(TimerStopped value),
    Result timerRestarted(TimerRestarted value),
    Result tickReceived(TickReceived value),
    @required Result orElse(),
  });
}

abstract class $CropsTimerEventCopyWith<$Res> {
  factory $CropsTimerEventCopyWith(
          CropsTimerEvent value, $Res Function(CropsTimerEvent) then) =
      _$CropsTimerEventCopyWithImpl<$Res>;
}

class _$CropsTimerEventCopyWithImpl<$Res>
    implements $CropsTimerEventCopyWith<$Res> {
  _$CropsTimerEventCopyWithImpl(this._value, this._then);

  final CropsTimerEvent _value;
  // ignore: unused_field
  final $Res Function(CropsTimerEvent) _then;
}

abstract class $TimerStartedCopyWith<$Res> {
  factory $TimerStartedCopyWith(
          TimerStarted value, $Res Function(TimerStarted) then) =
      _$TimerStartedCopyWithImpl<$Res>;
  $Res call({CropTimerService timerService});
}

class _$TimerStartedCopyWithImpl<$Res>
    extends _$CropsTimerEventCopyWithImpl<$Res>
    implements $TimerStartedCopyWith<$Res> {
  _$TimerStartedCopyWithImpl(
      TimerStarted _value, $Res Function(TimerStarted) _then)
      : super(_value, (v) => _then(v as TimerStarted));

  @override
  TimerStarted get _value => super._value as TimerStarted;

  @override
  $Res call({
    Object timerService = freezed,
  }) {
    return _then(TimerStarted(
      timerService == freezed
          ? _value.timerService
          : timerService as CropTimerService,
    ));
  }
}

class _$TimerStarted implements TimerStarted {
  const _$TimerStarted(this.timerService) : assert(timerService != null);

  @override
  final CropTimerService timerService;

  @override
  String toString() {
    return 'CropsTimerEvent.timerStarted(timerService: $timerService)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimerStarted &&
            (identical(other.timerService, timerService) ||
                const DeepCollectionEquality()
                    .equals(other.timerService, timerService)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(timerService);

  @override
  $TimerStartedCopyWith<TimerStarted> get copyWith =>
      _$TimerStartedCopyWithImpl<TimerStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result timerStarted(CropTimerService timerService),
    @required Result timerStopped(CropTimerService timerService),
    @required Result timerRestarted(CropTimerService timerService),
    @required Result tickReceived(int timer, Crop crop),
  }) {
    assert(timerStarted != null);
    assert(timerStopped != null);
    assert(timerRestarted != null);
    assert(tickReceived != null);
    return timerStarted(timerService);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result timerStarted(CropTimerService timerService),
    Result timerStopped(CropTimerService timerService),
    Result timerRestarted(CropTimerService timerService),
    Result tickReceived(int timer, Crop crop),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (timerStarted != null) {
      return timerStarted(timerService);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result timerStarted(TimerStarted value),
    @required Result timerStopped(TimerStopped value),
    @required Result timerRestarted(TimerRestarted value),
    @required Result tickReceived(TickReceived value),
  }) {
    assert(timerStarted != null);
    assert(timerStopped != null);
    assert(timerRestarted != null);
    assert(tickReceived != null);
    return timerStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result timerStarted(TimerStarted value),
    Result timerStopped(TimerStopped value),
    Result timerRestarted(TimerRestarted value),
    Result tickReceived(TickReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (timerStarted != null) {
      return timerStarted(this);
    }
    return orElse();
  }
}

abstract class TimerStarted implements CropsTimerEvent {
  const factory TimerStarted(CropTimerService timerService) = _$TimerStarted;

  CropTimerService get timerService;
  $TimerStartedCopyWith<TimerStarted> get copyWith;
}

abstract class $TimerStoppedCopyWith<$Res> {
  factory $TimerStoppedCopyWith(
          TimerStopped value, $Res Function(TimerStopped) then) =
      _$TimerStoppedCopyWithImpl<$Res>;
  $Res call({CropTimerService timerService});
}

class _$TimerStoppedCopyWithImpl<$Res>
    extends _$CropsTimerEventCopyWithImpl<$Res>
    implements $TimerStoppedCopyWith<$Res> {
  _$TimerStoppedCopyWithImpl(
      TimerStopped _value, $Res Function(TimerStopped) _then)
      : super(_value, (v) => _then(v as TimerStopped));

  @override
  TimerStopped get _value => super._value as TimerStopped;

  @override
  $Res call({
    Object timerService = freezed,
  }) {
    return _then(TimerStopped(
      timerService == freezed
          ? _value.timerService
          : timerService as CropTimerService,
    ));
  }
}

class _$TimerStopped implements TimerStopped {
  const _$TimerStopped(this.timerService) : assert(timerService != null);

  @override
  final CropTimerService timerService;

  @override
  String toString() {
    return 'CropsTimerEvent.timerStopped(timerService: $timerService)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimerStopped &&
            (identical(other.timerService, timerService) ||
                const DeepCollectionEquality()
                    .equals(other.timerService, timerService)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(timerService);

  @override
  $TimerStoppedCopyWith<TimerStopped> get copyWith =>
      _$TimerStoppedCopyWithImpl<TimerStopped>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result timerStarted(CropTimerService timerService),
    @required Result timerStopped(CropTimerService timerService),
    @required Result timerRestarted(CropTimerService timerService),
    @required Result tickReceived(int timer, Crop crop),
  }) {
    assert(timerStarted != null);
    assert(timerStopped != null);
    assert(timerRestarted != null);
    assert(tickReceived != null);
    return timerStopped(timerService);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result timerStarted(CropTimerService timerService),
    Result timerStopped(CropTimerService timerService),
    Result timerRestarted(CropTimerService timerService),
    Result tickReceived(int timer, Crop crop),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (timerStopped != null) {
      return timerStopped(timerService);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result timerStarted(TimerStarted value),
    @required Result timerStopped(TimerStopped value),
    @required Result timerRestarted(TimerRestarted value),
    @required Result tickReceived(TickReceived value),
  }) {
    assert(timerStarted != null);
    assert(timerStopped != null);
    assert(timerRestarted != null);
    assert(tickReceived != null);
    return timerStopped(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result timerStarted(TimerStarted value),
    Result timerStopped(TimerStopped value),
    Result timerRestarted(TimerRestarted value),
    Result tickReceived(TickReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (timerStopped != null) {
      return timerStopped(this);
    }
    return orElse();
  }
}

abstract class TimerStopped implements CropsTimerEvent {
  const factory TimerStopped(CropTimerService timerService) = _$TimerStopped;

  CropTimerService get timerService;
  $TimerStoppedCopyWith<TimerStopped> get copyWith;
}

abstract class $TimerRestartedCopyWith<$Res> {
  factory $TimerRestartedCopyWith(
          TimerRestarted value, $Res Function(TimerRestarted) then) =
      _$TimerRestartedCopyWithImpl<$Res>;
  $Res call({CropTimerService timerService});
}

class _$TimerRestartedCopyWithImpl<$Res>
    extends _$CropsTimerEventCopyWithImpl<$Res>
    implements $TimerRestartedCopyWith<$Res> {
  _$TimerRestartedCopyWithImpl(
      TimerRestarted _value, $Res Function(TimerRestarted) _then)
      : super(_value, (v) => _then(v as TimerRestarted));

  @override
  TimerRestarted get _value => super._value as TimerRestarted;

  @override
  $Res call({
    Object timerService = freezed,
  }) {
    return _then(TimerRestarted(
      timerService == freezed
          ? _value.timerService
          : timerService as CropTimerService,
    ));
  }
}

class _$TimerRestarted implements TimerRestarted {
  const _$TimerRestarted(this.timerService) : assert(timerService != null);

  @override
  final CropTimerService timerService;

  @override
  String toString() {
    return 'CropsTimerEvent.timerRestarted(timerService: $timerService)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimerRestarted &&
            (identical(other.timerService, timerService) ||
                const DeepCollectionEquality()
                    .equals(other.timerService, timerService)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(timerService);

  @override
  $TimerRestartedCopyWith<TimerRestarted> get copyWith =>
      _$TimerRestartedCopyWithImpl<TimerRestarted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result timerStarted(CropTimerService timerService),
    @required Result timerStopped(CropTimerService timerService),
    @required Result timerRestarted(CropTimerService timerService),
    @required Result tickReceived(int timer, Crop crop),
  }) {
    assert(timerStarted != null);
    assert(timerStopped != null);
    assert(timerRestarted != null);
    assert(tickReceived != null);
    return timerRestarted(timerService);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result timerStarted(CropTimerService timerService),
    Result timerStopped(CropTimerService timerService),
    Result timerRestarted(CropTimerService timerService),
    Result tickReceived(int timer, Crop crop),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (timerRestarted != null) {
      return timerRestarted(timerService);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result timerStarted(TimerStarted value),
    @required Result timerStopped(TimerStopped value),
    @required Result timerRestarted(TimerRestarted value),
    @required Result tickReceived(TickReceived value),
  }) {
    assert(timerStarted != null);
    assert(timerStopped != null);
    assert(timerRestarted != null);
    assert(tickReceived != null);
    return timerRestarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result timerStarted(TimerStarted value),
    Result timerStopped(TimerStopped value),
    Result timerRestarted(TimerRestarted value),
    Result tickReceived(TickReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (timerRestarted != null) {
      return timerRestarted(this);
    }
    return orElse();
  }
}

abstract class TimerRestarted implements CropsTimerEvent {
  const factory TimerRestarted(CropTimerService timerService) =
      _$TimerRestarted;

  CropTimerService get timerService;
  $TimerRestartedCopyWith<TimerRestarted> get copyWith;
}

abstract class $TickReceivedCopyWith<$Res> {
  factory $TickReceivedCopyWith(
          TickReceived value, $Res Function(TickReceived) then) =
      _$TickReceivedCopyWithImpl<$Res>;
  $Res call({int timer, Crop crop});

  $CropCopyWith<$Res> get crop;
}

class _$TickReceivedCopyWithImpl<$Res>
    extends _$CropsTimerEventCopyWithImpl<$Res>
    implements $TickReceivedCopyWith<$Res> {
  _$TickReceivedCopyWithImpl(
      TickReceived _value, $Res Function(TickReceived) _then)
      : super(_value, (v) => _then(v as TickReceived));

  @override
  TickReceived get _value => super._value as TickReceived;

  @override
  $Res call({
    Object timer = freezed,
    Object crop = freezed,
  }) {
    return _then(TickReceived(
      timer == freezed ? _value.timer : timer as int,
      crop == freezed ? _value.crop : crop as Crop,
    ));
  }

  @override
  $CropCopyWith<$Res> get crop {
    if (_value.crop == null) {
      return null;
    }
    return $CropCopyWith<$Res>(_value.crop, (value) {
      return _then(_value.copyWith(crop: value));
    });
  }
}

class _$TickReceived implements TickReceived {
  const _$TickReceived(this.timer, this.crop)
      : assert(timer != null),
        assert(crop != null);

  @override
  final int timer;
  @override
  final Crop crop;

  @override
  String toString() {
    return 'CropsTimerEvent.tickReceived(timer: $timer, crop: $crop)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TickReceived &&
            (identical(other.timer, timer) ||
                const DeepCollectionEquality().equals(other.timer, timer)) &&
            (identical(other.crop, crop) ||
                const DeepCollectionEquality().equals(other.crop, crop)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(timer) ^
      const DeepCollectionEquality().hash(crop);

  @override
  $TickReceivedCopyWith<TickReceived> get copyWith =>
      _$TickReceivedCopyWithImpl<TickReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result timerStarted(CropTimerService timerService),
    @required Result timerStopped(CropTimerService timerService),
    @required Result timerRestarted(CropTimerService timerService),
    @required Result tickReceived(int timer, Crop crop),
  }) {
    assert(timerStarted != null);
    assert(timerStopped != null);
    assert(timerRestarted != null);
    assert(tickReceived != null);
    return tickReceived(timer, crop);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result timerStarted(CropTimerService timerService),
    Result timerStopped(CropTimerService timerService),
    Result timerRestarted(CropTimerService timerService),
    Result tickReceived(int timer, Crop crop),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (tickReceived != null) {
      return tickReceived(timer, crop);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result timerStarted(TimerStarted value),
    @required Result timerStopped(TimerStopped value),
    @required Result timerRestarted(TimerRestarted value),
    @required Result tickReceived(TickReceived value),
  }) {
    assert(timerStarted != null);
    assert(timerStopped != null);
    assert(timerRestarted != null);
    assert(tickReceived != null);
    return tickReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result timerStarted(TimerStarted value),
    Result timerStopped(TimerStopped value),
    Result timerRestarted(TimerRestarted value),
    Result tickReceived(TickReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (tickReceived != null) {
      return tickReceived(this);
    }
    return orElse();
  }
}

abstract class TickReceived implements CropsTimerEvent {
  const factory TickReceived(int timer, Crop crop) = _$TickReceived;

  int get timer;
  Crop get crop;
  $TickReceivedCopyWith<TickReceived> get copyWith;
}

class _$CropsTimerStateTearOff {
  const _$CropsTimerStateTearOff();

  Initial initial() {
    return const Initial();
  }
}

// ignore: unused_element
const $CropsTimerState = _$CropsTimerStateTearOff();

mixin _$CropsTimerState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    @required Result orElse(),
  });
}

abstract class $CropsTimerStateCopyWith<$Res> {
  factory $CropsTimerStateCopyWith(
          CropsTimerState value, $Res Function(CropsTimerState) then) =
      _$CropsTimerStateCopyWithImpl<$Res>;
}

class _$CropsTimerStateCopyWithImpl<$Res>
    implements $CropsTimerStateCopyWith<$Res> {
  _$CropsTimerStateCopyWithImpl(this._value, this._then);

  final CropsTimerState _value;
  // ignore: unused_field
  final $Res Function(CropsTimerState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$CropsTimerStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'CropsTimerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
  }) {
    assert(initial != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
  }) {
    assert(initial != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CropsTimerState {
  const factory Initial() = _$Initial;
}
