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
}

// ignore: unused_element
const $CropsTimerEvent = _$CropsTimerEventTearOff();

mixin _$CropsTimerEvent {
  CropTimerService get timerService;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result timerStarted(CropTimerService timerService),
    @required Result timerStopped(CropTimerService timerService),
    @required Result timerRestarted(CropTimerService timerService),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result timerStarted(CropTimerService timerService),
    Result timerStopped(CropTimerService timerService),
    Result timerRestarted(CropTimerService timerService),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result timerStarted(TimerStarted value),
    @required Result timerStopped(TimerStopped value),
    @required Result timerRestarted(TimerRestarted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result timerStarted(TimerStarted value),
    Result timerStopped(TimerStopped value),
    Result timerRestarted(TimerRestarted value),
    @required Result orElse(),
  });

  $CropsTimerEventCopyWith<CropsTimerEvent> get copyWith;
}

abstract class $CropsTimerEventCopyWith<$Res> {
  factory $CropsTimerEventCopyWith(
          CropsTimerEvent value, $Res Function(CropsTimerEvent) then) =
      _$CropsTimerEventCopyWithImpl<$Res>;
  $Res call({CropTimerService timerService});
}

class _$CropsTimerEventCopyWithImpl<$Res>
    implements $CropsTimerEventCopyWith<$Res> {
  _$CropsTimerEventCopyWithImpl(this._value, this._then);

  final CropsTimerEvent _value;
  // ignore: unused_field
  final $Res Function(CropsTimerEvent) _then;

  @override
  $Res call({
    Object timerService = freezed,
  }) {
    return _then(_value.copyWith(
      timerService: timerService == freezed
          ? _value.timerService
          : timerService as CropTimerService,
    ));
  }
}

abstract class $TimerStartedCopyWith<$Res>
    implements $CropsTimerEventCopyWith<$Res> {
  factory $TimerStartedCopyWith(
          TimerStarted value, $Res Function(TimerStarted) then) =
      _$TimerStartedCopyWithImpl<$Res>;
  @override
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
  }) {
    assert(timerStarted != null);
    assert(timerStopped != null);
    assert(timerRestarted != null);
    return timerStarted(timerService);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result timerStarted(CropTimerService timerService),
    Result timerStopped(CropTimerService timerService),
    Result timerRestarted(CropTimerService timerService),
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
  }) {
    assert(timerStarted != null);
    assert(timerStopped != null);
    assert(timerRestarted != null);
    return timerStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result timerStarted(TimerStarted value),
    Result timerStopped(TimerStopped value),
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
  const factory TimerStarted(CropTimerService timerService) = _$TimerStarted;

  @override
  CropTimerService get timerService;
  @override
  $TimerStartedCopyWith<TimerStarted> get copyWith;
}

abstract class $TimerStoppedCopyWith<$Res>
    implements $CropsTimerEventCopyWith<$Res> {
  factory $TimerStoppedCopyWith(
          TimerStopped value, $Res Function(TimerStopped) then) =
      _$TimerStoppedCopyWithImpl<$Res>;
  @override
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
  }) {
    assert(timerStarted != null);
    assert(timerStopped != null);
    assert(timerRestarted != null);
    return timerStopped(timerService);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result timerStarted(CropTimerService timerService),
    Result timerStopped(CropTimerService timerService),
    Result timerRestarted(CropTimerService timerService),
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
  }) {
    assert(timerStarted != null);
    assert(timerStopped != null);
    assert(timerRestarted != null);
    return timerStopped(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result timerStarted(TimerStarted value),
    Result timerStopped(TimerStopped value),
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
  const factory TimerStopped(CropTimerService timerService) = _$TimerStopped;

  @override
  CropTimerService get timerService;
  @override
  $TimerStoppedCopyWith<TimerStopped> get copyWith;
}

abstract class $TimerRestartedCopyWith<$Res>
    implements $CropsTimerEventCopyWith<$Res> {
  factory $TimerRestartedCopyWith(
          TimerRestarted value, $Res Function(TimerRestarted) then) =
      _$TimerRestartedCopyWithImpl<$Res>;
  @override
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
  }) {
    assert(timerStarted != null);
    assert(timerStopped != null);
    assert(timerRestarted != null);
    return timerRestarted(timerService);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result timerStarted(CropTimerService timerService),
    Result timerStopped(CropTimerService timerService),
    Result timerRestarted(CropTimerService timerService),
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
  }) {
    assert(timerStarted != null);
    assert(timerStopped != null);
    assert(timerRestarted != null);
    return timerRestarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result timerStarted(TimerStarted value),
    Result timerStopped(TimerStopped value),
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
  const factory TimerRestarted(CropTimerService timerService) =
      _$TimerRestarted;

  @override
  CropTimerService get timerService;
  @override
  $TimerRestartedCopyWith<TimerRestarted> get copyWith;
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
