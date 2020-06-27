// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'crops_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CropsEventTearOff {
  const _$CropsEventTearOff();

  GetCrops getCrops() {
    return const GetCrops();
  }

  CreateCrop createCrop(Crop crop) {
    return CreateCrop(
      crop,
    );
  }

  DeleteCrop deleteCrop(Crop crop) {
    return DeleteCrop(
      crop,
    );
  }
}

// ignore: unused_element
const $CropsEvent = _$CropsEventTearOff();

mixin _$CropsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getCrops(),
    @required Result createCrop(Crop crop),
    @required Result deleteCrop(Crop crop),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCrops(),
    Result createCrop(Crop crop),
    Result deleteCrop(Crop crop),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getCrops(GetCrops value),
    @required Result createCrop(CreateCrop value),
    @required Result deleteCrop(DeleteCrop value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCrops(GetCrops value),
    Result createCrop(CreateCrop value),
    Result deleteCrop(DeleteCrop value),
    @required Result orElse(),
  });
}

abstract class $CropsEventCopyWith<$Res> {
  factory $CropsEventCopyWith(
          CropsEvent value, $Res Function(CropsEvent) then) =
      _$CropsEventCopyWithImpl<$Res>;
}

class _$CropsEventCopyWithImpl<$Res> implements $CropsEventCopyWith<$Res> {
  _$CropsEventCopyWithImpl(this._value, this._then);

  final CropsEvent _value;
  // ignore: unused_field
  final $Res Function(CropsEvent) _then;
}

abstract class $GetCropsCopyWith<$Res> {
  factory $GetCropsCopyWith(GetCrops value, $Res Function(GetCrops) then) =
      _$GetCropsCopyWithImpl<$Res>;
}

class _$GetCropsCopyWithImpl<$Res> extends _$CropsEventCopyWithImpl<$Res>
    implements $GetCropsCopyWith<$Res> {
  _$GetCropsCopyWithImpl(GetCrops _value, $Res Function(GetCrops) _then)
      : super(_value, (v) => _then(v as GetCrops));

  @override
  GetCrops get _value => super._value as GetCrops;
}

class _$GetCrops implements GetCrops {
  const _$GetCrops();

  @override
  String toString() {
    return 'CropsEvent.getCrops()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetCrops);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getCrops(),
    @required Result createCrop(Crop crop),
    @required Result deleteCrop(Crop crop),
  }) {
    assert(getCrops != null);
    assert(createCrop != null);
    assert(deleteCrop != null);
    return getCrops();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCrops(),
    Result createCrop(Crop crop),
    Result deleteCrop(Crop crop),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getCrops != null) {
      return getCrops();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getCrops(GetCrops value),
    @required Result createCrop(CreateCrop value),
    @required Result deleteCrop(DeleteCrop value),
  }) {
    assert(getCrops != null);
    assert(createCrop != null);
    assert(deleteCrop != null);
    return getCrops(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCrops(GetCrops value),
    Result createCrop(CreateCrop value),
    Result deleteCrop(DeleteCrop value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getCrops != null) {
      return getCrops(this);
    }
    return orElse();
  }
}

abstract class GetCrops implements CropsEvent {
  const factory GetCrops() = _$GetCrops;
}

abstract class $CreateCropCopyWith<$Res> {
  factory $CreateCropCopyWith(
          CreateCrop value, $Res Function(CreateCrop) then) =
      _$CreateCropCopyWithImpl<$Res>;
  $Res call({Crop crop});

  $CropCopyWith<$Res> get crop;
}

class _$CreateCropCopyWithImpl<$Res> extends _$CropsEventCopyWithImpl<$Res>
    implements $CreateCropCopyWith<$Res> {
  _$CreateCropCopyWithImpl(CreateCrop _value, $Res Function(CreateCrop) _then)
      : super(_value, (v) => _then(v as CreateCrop));

  @override
  CreateCrop get _value => super._value as CreateCrop;

  @override
  $Res call({
    Object crop = freezed,
  }) {
    return _then(CreateCrop(
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

class _$CreateCrop implements CreateCrop {
  const _$CreateCrop(this.crop) : assert(crop != null);

  @override
  final Crop crop;

  @override
  String toString() {
    return 'CropsEvent.createCrop(crop: $crop)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateCrop &&
            (identical(other.crop, crop) ||
                const DeepCollectionEquality().equals(other.crop, crop)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(crop);

  @override
  $CreateCropCopyWith<CreateCrop> get copyWith =>
      _$CreateCropCopyWithImpl<CreateCrop>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getCrops(),
    @required Result createCrop(Crop crop),
    @required Result deleteCrop(Crop crop),
  }) {
    assert(getCrops != null);
    assert(createCrop != null);
    assert(deleteCrop != null);
    return createCrop(crop);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCrops(),
    Result createCrop(Crop crop),
    Result deleteCrop(Crop crop),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createCrop != null) {
      return createCrop(crop);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getCrops(GetCrops value),
    @required Result createCrop(CreateCrop value),
    @required Result deleteCrop(DeleteCrop value),
  }) {
    assert(getCrops != null);
    assert(createCrop != null);
    assert(deleteCrop != null);
    return createCrop(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCrops(GetCrops value),
    Result createCrop(CreateCrop value),
    Result deleteCrop(DeleteCrop value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createCrop != null) {
      return createCrop(this);
    }
    return orElse();
  }
}

abstract class CreateCrop implements CropsEvent {
  const factory CreateCrop(Crop crop) = _$CreateCrop;

  Crop get crop;
  $CreateCropCopyWith<CreateCrop> get copyWith;
}

abstract class $DeleteCropCopyWith<$Res> {
  factory $DeleteCropCopyWith(
          DeleteCrop value, $Res Function(DeleteCrop) then) =
      _$DeleteCropCopyWithImpl<$Res>;
  $Res call({Crop crop});

  $CropCopyWith<$Res> get crop;
}

class _$DeleteCropCopyWithImpl<$Res> extends _$CropsEventCopyWithImpl<$Res>
    implements $DeleteCropCopyWith<$Res> {
  _$DeleteCropCopyWithImpl(DeleteCrop _value, $Res Function(DeleteCrop) _then)
      : super(_value, (v) => _then(v as DeleteCrop));

  @override
  DeleteCrop get _value => super._value as DeleteCrop;

  @override
  $Res call({
    Object crop = freezed,
  }) {
    return _then(DeleteCrop(
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

class _$DeleteCrop implements DeleteCrop {
  const _$DeleteCrop(this.crop) : assert(crop != null);

  @override
  final Crop crop;

  @override
  String toString() {
    return 'CropsEvent.deleteCrop(crop: $crop)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteCrop &&
            (identical(other.crop, crop) ||
                const DeepCollectionEquality().equals(other.crop, crop)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(crop);

  @override
  $DeleteCropCopyWith<DeleteCrop> get copyWith =>
      _$DeleteCropCopyWithImpl<DeleteCrop>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getCrops(),
    @required Result createCrop(Crop crop),
    @required Result deleteCrop(Crop crop),
  }) {
    assert(getCrops != null);
    assert(createCrop != null);
    assert(deleteCrop != null);
    return deleteCrop(crop);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCrops(),
    Result createCrop(Crop crop),
    Result deleteCrop(Crop crop),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteCrop != null) {
      return deleteCrop(crop);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getCrops(GetCrops value),
    @required Result createCrop(CreateCrop value),
    @required Result deleteCrop(DeleteCrop value),
  }) {
    assert(getCrops != null);
    assert(createCrop != null);
    assert(deleteCrop != null);
    return deleteCrop(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCrops(GetCrops value),
    Result createCrop(CreateCrop value),
    Result deleteCrop(DeleteCrop value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteCrop != null) {
      return deleteCrop(this);
    }
    return orElse();
  }
}

abstract class DeleteCrop implements CropsEvent {
  const factory DeleteCrop(Crop crop) = _$DeleteCrop;

  Crop get crop;
  $DeleteCropCopyWith<DeleteCrop> get copyWith;
}

class _$CropsStateTearOff {
  const _$CropsStateTearOff();

  _CropState call(
      {@required bool isLoading,
      @required bool showErrorMessage,
      @required List<Crop> crops}) {
    return _CropState(
      isLoading: isLoading,
      showErrorMessage: showErrorMessage,
      crops: crops,
    );
  }
}

// ignore: unused_element
const $CropsState = _$CropsStateTearOff();

mixin _$CropsState {
  bool get isLoading;
  bool get showErrorMessage;
  List<Crop> get crops;

  $CropsStateCopyWith<CropsState> get copyWith;
}

abstract class $CropsStateCopyWith<$Res> {
  factory $CropsStateCopyWith(
          CropsState value, $Res Function(CropsState) then) =
      _$CropsStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, bool showErrorMessage, List<Crop> crops});
}

class _$CropsStateCopyWithImpl<$Res> implements $CropsStateCopyWith<$Res> {
  _$CropsStateCopyWithImpl(this._value, this._then);

  final CropsState _value;
  // ignore: unused_field
  final $Res Function(CropsState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object showErrorMessage = freezed,
    Object crops = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage as bool,
      crops: crops == freezed ? _value.crops : crops as List<Crop>,
    ));
  }
}

abstract class _$CropStateCopyWith<$Res> implements $CropsStateCopyWith<$Res> {
  factory _$CropStateCopyWith(
          _CropState value, $Res Function(_CropState) then) =
      __$CropStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, bool showErrorMessage, List<Crop> crops});
}

class __$CropStateCopyWithImpl<$Res> extends _$CropsStateCopyWithImpl<$Res>
    implements _$CropStateCopyWith<$Res> {
  __$CropStateCopyWithImpl(_CropState _value, $Res Function(_CropState) _then)
      : super(_value, (v) => _then(v as _CropState));

  @override
  _CropState get _value => super._value as _CropState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object showErrorMessage = freezed,
    Object crops = freezed,
  }) {
    return _then(_CropState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage as bool,
      crops: crops == freezed ? _value.crops : crops as List<Crop>,
    ));
  }
}

class _$_CropState implements _CropState {
  const _$_CropState(
      {@required this.isLoading,
      @required this.showErrorMessage,
      @required this.crops})
      : assert(isLoading != null),
        assert(showErrorMessage != null),
        assert(crops != null);

  @override
  final bool isLoading;
  @override
  final bool showErrorMessage;
  @override
  final List<Crop> crops;

  @override
  String toString() {
    return 'CropsState(isLoading: $isLoading, showErrorMessage: $showErrorMessage, crops: $crops)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CropState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessage, showErrorMessage)) &&
            (identical(other.crops, crops) ||
                const DeepCollectionEquality().equals(other.crops, crops)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(showErrorMessage) ^
      const DeepCollectionEquality().hash(crops);

  @override
  _$CropStateCopyWith<_CropState> get copyWith =>
      __$CropStateCopyWithImpl<_CropState>(this, _$identity);
}

abstract class _CropState implements CropsState {
  const factory _CropState(
      {@required bool isLoading,
      @required bool showErrorMessage,
      @required List<Crop> crops}) = _$_CropState;

  @override
  bool get isLoading;
  @override
  bool get showErrorMessage;
  @override
  List<Crop> get crops;
  @override
  _$CropStateCopyWith<_CropState> get copyWith;
}
