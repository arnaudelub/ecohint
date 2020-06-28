// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'crops_timer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CropsTimerEventTearOff {
  const _$CropsTimerEventTearOff();

  TimerStarted timerStarted() {
    return const TimerStarted();
  }

  TimerStopped timerStopped() {
    return const TimerStopped();
  }

  TimerPaused timerPaused() {
    return const TimerPaused();
  }

  TimerRestarted timerRestarted() {
    return const TimerRestarted();
  }
}

// ignore: unused_element
const $CropsTimerEvent = _$CropsTimerEventTearOff();

mixin _$CropsTimerEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result timerStarted(),
    @required Result timerStopped(),
    @required Result timerPaused(),
    @required Result timerRestarted(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result timerStarted(),
    Result timerStopped(),
    Result timerPaused(),
    Result timerRestarted(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result timerStarted(TimerStarted value),
    @required Result timerStopped(TimerStopped value),
    @required Result timerPaused(TimerPaused value),
    @required Result timerRestarted(TimerRestarted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result timerStarted(TimerStarted value),
    Result timerStopped(TimerStopped value),
    Result timerPaused(TimerPaused value),
    Result timerRestarted(TimerRestarted value),
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
}

class _$TimerStartedCopyWithImpl<$Res>
    extends _$CropsTimerEventCopyWithImpl<$Res>
    implements $TimerStartedCopyWith<$Res> {
  _$TimerStartedCopyWithImpl(
      TimerStarted _value, $Res Function(TimerStarted) _then)
      : super(_value, (v) => _then(v as TimerStarted));

  @override
  TimerStarted get _value => super._value as TimerStarted;
}

class _$TimerStarted implements TimerStarted {
  const _$TimerStarted();

  @override
  String toString() {
    return 'CropsTimerEvent.timerStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TimerStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result timerStarted(),
    @required Result timerStopped(),
    @required Result timerPaused(),
    @required Result timerRestarted(),
  }) {
    assert(timerStarted != null);
    assert(timerStopped != null);
    assert(timerPaused != null);
    assert(timerRestarted != null);
    return timerStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result timerStarted(),
    Result timerStopped(),
    Result timerPaused(),
    Result timerRestarted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (timerStarted != null) {
      return timerStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result timerStarted(TimerStarted value),
    @required Result timerStopped(TimerStopped value),
    @required Result timerPaused(TimerPaused value),
    @required Result timerRestarted(TimerRestarted value),
  }) {
    assert(timerStarted != null);
    assert(timerStopped != null);
    assert(timerPaused != null);
    assert(timerRestarted != null);
    return timerStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result timerStarted(TimerStarted value),
    Result timerStopped(TimerStopped value),
    Result timerPaused(TimerPaused value),
    Result timerRestarted(TimerRestarted value),
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
  const factory TimerStarted() = _$TimerStarted;
}

abstract class $TimerStoppedCopyWith<$Res> {
  factory $TimerStoppedCopyWith(
          TimerStopped value, $Res Function(TimerStopped) then) =
      _$TimerStoppedCopyWithImpl<$Res>;
}

class _$TimerStoppedCopyWithImpl<$Res>
    extends _$CropsTimerEventCopyWithImpl<$Res>
    implements $TimerStoppedCopyWith<$Res> {
  _$TimerStoppedCopyWithImpl(
      TimerStopped _value, $Res Function(TimerStopped) _then)
      : super(_value, (v) => _then(v as TimerStopped));

  @override
  TimerStopped get _value => super._value as TimerStopped;
}

class _$TimerStopped implements TimerStopped {
  const _$TimerStopped();

  @override
  String toString() {
    return 'CropsTimerEvent.timerStopped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TimerStopped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result timerStarted(),
    @required Result timerStopped(),
    @required Result timerPaused(),
    @required Result timerRestarted(),
  }) {
    assert(timerStarted != null);
    assert(timerStopped != null);
    assert(timerPaused != null);
    assert(timerRestarted != null);
    return timerStopped();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result timerStarted(),
    Result timerStopped(),
    Result timerPaused(),
    Result timerRestarted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (timerStopped != null) {
      return timerStopped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result timerStarted(TimerStarted value),
    @required Result timerStopped(TimerStopped value),
    @required Result timerPaused(TimerPaused value),
    @required Result timerRestarted(TimerRestarted value),
  }) {
    assert(timerStarted != null);
    assert(timerStopped != null);
    assert(timerPaused != null);
    assert(timerRestarted != null);
    return timerStopped(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result timerStarted(TimerStarted value),
    Result timerStopped(TimerStopped value),
    Result timerPaused(TimerPaused value),
    Result timerRestarted(TimerRestarted value),
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
  const factory TimerStopped() = _$TimerStopped;
}

abstract class $TimerPausedCopyWith<$Res> {
  factory $TimerPausedCopyWith(
          TimerPaused value, $Res Function(TimerPaused) then) =
      _$TimerPausedCopyWithImpl<$Res>;
}

class _$TimerPausedCopyWithImpl<$Res>
    extends _$CropsTimerEventCopyWithImpl<$Res>
    implements $TimerPausedCopyWith<$Res> {
  _$TimerPausedCopyWithImpl(
      TimerPaused _value, $Res Function(TimerPaused) _then)
      : super(_value, (v) => _then(v as TimerPaused));

  @override
  TimerPaused get _value => super._value as TimerPaused;
}

class _$TimerPaused implements TimerPaused {
  const _$TimerPaused();

  @override
  String toString() {
    return 'CropsTimerEvent.timerPaused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TimerPaused);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result timerStarted(),
    @required Result timerStopped(),
    @required Result timerPaused(),
    @required Result timerRestarted(),
  }) {
    assert(timerStarted != null);
    assert(timerStopped != null);
    assert(timerPaused != null);
    assert(timerRestarted != null);
    return timerPaused();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result timerStarted(),
    Result timerStopped(),
    Result timerPaused(),
    Result timerRestarted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (timerPaused != null) {
      return timerPaused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result timerStarted(TimerStarted value),
    @required Result timerStopped(TimerStopped value),
    @required Result timerPaused(TimerPaused value),
    @required Result timerRestarted(TimerRestarted value),
  }) {
    assert(timerStarted != null);
    assert(timerStopped != null);
    assert(timerPaused != null);
    assert(timerRestarted != null);
    return timerPaused(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result timerStarted(TimerStarted value),
    Result timerStopped(TimerStopped value),
    Result timerPaused(TimerPaused value),
    Result timerRestarted(TimerRestarted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (timerPaused != null) {
      return timerPaused(this);
    }
    return orElse();
  }
}

abstract class TimerPaused implements CropsTimerEvent {
  const factory TimerPaused() = _$TimerPaused;
}

abstract class $TimerRestartedCopyWith<$Res> {
  factory $TimerRestartedCopyWith(
          TimerRestarted value, $Res Function(TimerRestarted) then) =
      _$TimerRestartedCopyWithImpl<$Res>;
}

class _$TimerRestartedCopyWithImpl<$Res>
    extends _$CropsTimerEventCopyWithImpl<$Res>
    implements $TimerRestartedCopyWith<$Res> {
  _$TimerRestartedCopyWithImpl(
      TimerRestarted _value, $Res Function(TimerRestarted) _then)
      : super(_value, (v) => _then(v as TimerRestarted));

  @override
  TimerRestarted get _value => super._value as TimerRestarted;
}

class _$TimerRestarted implements TimerRestarted {
  const _$TimerRestarted();

  @override
  String toString() {
    return 'CropsTimerEvent.timerRestarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TimerRestarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result timerStarted(),
    @required Result timerStopped(),
    @required Result timerPaused(),
    @required Result timerRestarted(),
  }) {
    assert(timerStarted != null);
    assert(timerStopped != null);
    assert(timerPaused != null);
    assert(timerRestarted != null);
    return timerRestarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result timerStarted(),
    Result timerStopped(),
    Result timerPaused(),
    Result timerRestarted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (timerRestarted != null) {
      return timerRestarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result timerStarted(TimerStarted value),
    @required Result timerStopped(TimerStopped value),
    @required Result timerPaused(TimerPaused value),
    @required Result timerRestarted(TimerRestarted value),
  }) {
    assert(timerStarted != null);
    assert(timerStopped != null);
    assert(timerPaused != null);
    assert(timerRestarted != null);
    return timerRestarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result timerStarted(TimerStarted value),
    Result timerStopped(TimerStopped value),
    Result timerPaused(TimerPaused value),
    Result timerRestarted(TimerRestarted value),
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
  const factory TimerRestarted() = _$TimerRestarted;
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
