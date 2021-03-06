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

  CreateCrop createCrop() {
    return const CreateCrop();
  }

  DeleteCrop deleteCrop(int cropIndex) {
    return DeleteCrop(
      cropIndex,
    );
  }

  DeleteCrops deleteCrops() {
    return const DeleteCrops();
  }

  NameChanged nameChanged(String name) {
    return NameChanged(
      name,
    );
  }

  PictureChanged pictureChanged(String picture) {
    return PictureChanged(
      picture,
    );
  }

  TimerChanged timerChanged(int timer, {int index}) {
    return TimerChanged(
      timer,
      index: index,
    );
  }

  CropSelected cropSelected(Crop crop) {
    return CropSelected(
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
    @required Result createCrop(),
    @required Result deleteCrop(int cropIndex),
    @required Result deleteCrops(),
    @required Result nameChanged(String name),
    @required Result pictureChanged(String picture),
    @required Result timerChanged(int timer, int index),
    @required Result cropSelected(Crop crop),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCrops(),
    Result createCrop(),
    Result deleteCrop(int cropIndex),
    Result deleteCrops(),
    Result nameChanged(String name),
    Result pictureChanged(String picture),
    Result timerChanged(int timer, int index),
    Result cropSelected(Crop crop),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getCrops(GetCrops value),
    @required Result createCrop(CreateCrop value),
    @required Result deleteCrop(DeleteCrop value),
    @required Result deleteCrops(DeleteCrops value),
    @required Result nameChanged(NameChanged value),
    @required Result pictureChanged(PictureChanged value),
    @required Result timerChanged(TimerChanged value),
    @required Result cropSelected(CropSelected value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCrops(GetCrops value),
    Result createCrop(CreateCrop value),
    Result deleteCrop(DeleteCrop value),
    Result deleteCrops(DeleteCrops value),
    Result nameChanged(NameChanged value),
    Result pictureChanged(PictureChanged value),
    Result timerChanged(TimerChanged value),
    Result cropSelected(CropSelected value),
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
    @required Result createCrop(),
    @required Result deleteCrop(int cropIndex),
    @required Result deleteCrops(),
    @required Result nameChanged(String name),
    @required Result pictureChanged(String picture),
    @required Result timerChanged(int timer, int index),
    @required Result cropSelected(Crop crop),
  }) {
    assert(getCrops != null);
    assert(createCrop != null);
    assert(deleteCrop != null);
    assert(deleteCrops != null);
    assert(nameChanged != null);
    assert(pictureChanged != null);
    assert(timerChanged != null);
    assert(cropSelected != null);
    return getCrops();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCrops(),
    Result createCrop(),
    Result deleteCrop(int cropIndex),
    Result deleteCrops(),
    Result nameChanged(String name),
    Result pictureChanged(String picture),
    Result timerChanged(int timer, int index),
    Result cropSelected(Crop crop),
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
    @required Result deleteCrops(DeleteCrops value),
    @required Result nameChanged(NameChanged value),
    @required Result pictureChanged(PictureChanged value),
    @required Result timerChanged(TimerChanged value),
    @required Result cropSelected(CropSelected value),
  }) {
    assert(getCrops != null);
    assert(createCrop != null);
    assert(deleteCrop != null);
    assert(deleteCrops != null);
    assert(nameChanged != null);
    assert(pictureChanged != null);
    assert(timerChanged != null);
    assert(cropSelected != null);
    return getCrops(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCrops(GetCrops value),
    Result createCrop(CreateCrop value),
    Result deleteCrop(DeleteCrop value),
    Result deleteCrops(DeleteCrops value),
    Result nameChanged(NameChanged value),
    Result pictureChanged(PictureChanged value),
    Result timerChanged(TimerChanged value),
    Result cropSelected(CropSelected value),
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
}

class _$CreateCropCopyWithImpl<$Res> extends _$CropsEventCopyWithImpl<$Res>
    implements $CreateCropCopyWith<$Res> {
  _$CreateCropCopyWithImpl(CreateCrop _value, $Res Function(CreateCrop) _then)
      : super(_value, (v) => _then(v as CreateCrop));

  @override
  CreateCrop get _value => super._value as CreateCrop;
}

class _$CreateCrop implements CreateCrop {
  const _$CreateCrop();

  @override
  String toString() {
    return 'CropsEvent.createCrop()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CreateCrop);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getCrops(),
    @required Result createCrop(),
    @required Result deleteCrop(int cropIndex),
    @required Result deleteCrops(),
    @required Result nameChanged(String name),
    @required Result pictureChanged(String picture),
    @required Result timerChanged(int timer, int index),
    @required Result cropSelected(Crop crop),
  }) {
    assert(getCrops != null);
    assert(createCrop != null);
    assert(deleteCrop != null);
    assert(deleteCrops != null);
    assert(nameChanged != null);
    assert(pictureChanged != null);
    assert(timerChanged != null);
    assert(cropSelected != null);
    return createCrop();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCrops(),
    Result createCrop(),
    Result deleteCrop(int cropIndex),
    Result deleteCrops(),
    Result nameChanged(String name),
    Result pictureChanged(String picture),
    Result timerChanged(int timer, int index),
    Result cropSelected(Crop crop),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createCrop != null) {
      return createCrop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getCrops(GetCrops value),
    @required Result createCrop(CreateCrop value),
    @required Result deleteCrop(DeleteCrop value),
    @required Result deleteCrops(DeleteCrops value),
    @required Result nameChanged(NameChanged value),
    @required Result pictureChanged(PictureChanged value),
    @required Result timerChanged(TimerChanged value),
    @required Result cropSelected(CropSelected value),
  }) {
    assert(getCrops != null);
    assert(createCrop != null);
    assert(deleteCrop != null);
    assert(deleteCrops != null);
    assert(nameChanged != null);
    assert(pictureChanged != null);
    assert(timerChanged != null);
    assert(cropSelected != null);
    return createCrop(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCrops(GetCrops value),
    Result createCrop(CreateCrop value),
    Result deleteCrop(DeleteCrop value),
    Result deleteCrops(DeleteCrops value),
    Result nameChanged(NameChanged value),
    Result pictureChanged(PictureChanged value),
    Result timerChanged(TimerChanged value),
    Result cropSelected(CropSelected value),
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
  const factory CreateCrop() = _$CreateCrop;
}

abstract class $DeleteCropCopyWith<$Res> {
  factory $DeleteCropCopyWith(
          DeleteCrop value, $Res Function(DeleteCrop) then) =
      _$DeleteCropCopyWithImpl<$Res>;
  $Res call({int cropIndex});
}

class _$DeleteCropCopyWithImpl<$Res> extends _$CropsEventCopyWithImpl<$Res>
    implements $DeleteCropCopyWith<$Res> {
  _$DeleteCropCopyWithImpl(DeleteCrop _value, $Res Function(DeleteCrop) _then)
      : super(_value, (v) => _then(v as DeleteCrop));

  @override
  DeleteCrop get _value => super._value as DeleteCrop;

  @override
  $Res call({
    Object cropIndex = freezed,
  }) {
    return _then(DeleteCrop(
      cropIndex == freezed ? _value.cropIndex : cropIndex as int,
    ));
  }
}

class _$DeleteCrop implements DeleteCrop {
  const _$DeleteCrop(this.cropIndex) : assert(cropIndex != null);

  @override
  final int cropIndex;

  @override
  String toString() {
    return 'CropsEvent.deleteCrop(cropIndex: $cropIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteCrop &&
            (identical(other.cropIndex, cropIndex) ||
                const DeepCollectionEquality()
                    .equals(other.cropIndex, cropIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cropIndex);

  @override
  $DeleteCropCopyWith<DeleteCrop> get copyWith =>
      _$DeleteCropCopyWithImpl<DeleteCrop>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getCrops(),
    @required Result createCrop(),
    @required Result deleteCrop(int cropIndex),
    @required Result deleteCrops(),
    @required Result nameChanged(String name),
    @required Result pictureChanged(String picture),
    @required Result timerChanged(int timer, int index),
    @required Result cropSelected(Crop crop),
  }) {
    assert(getCrops != null);
    assert(createCrop != null);
    assert(deleteCrop != null);
    assert(deleteCrops != null);
    assert(nameChanged != null);
    assert(pictureChanged != null);
    assert(timerChanged != null);
    assert(cropSelected != null);
    return deleteCrop(cropIndex);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCrops(),
    Result createCrop(),
    Result deleteCrop(int cropIndex),
    Result deleteCrops(),
    Result nameChanged(String name),
    Result pictureChanged(String picture),
    Result timerChanged(int timer, int index),
    Result cropSelected(Crop crop),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteCrop != null) {
      return deleteCrop(cropIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getCrops(GetCrops value),
    @required Result createCrop(CreateCrop value),
    @required Result deleteCrop(DeleteCrop value),
    @required Result deleteCrops(DeleteCrops value),
    @required Result nameChanged(NameChanged value),
    @required Result pictureChanged(PictureChanged value),
    @required Result timerChanged(TimerChanged value),
    @required Result cropSelected(CropSelected value),
  }) {
    assert(getCrops != null);
    assert(createCrop != null);
    assert(deleteCrop != null);
    assert(deleteCrops != null);
    assert(nameChanged != null);
    assert(pictureChanged != null);
    assert(timerChanged != null);
    assert(cropSelected != null);
    return deleteCrop(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCrops(GetCrops value),
    Result createCrop(CreateCrop value),
    Result deleteCrop(DeleteCrop value),
    Result deleteCrops(DeleteCrops value),
    Result nameChanged(NameChanged value),
    Result pictureChanged(PictureChanged value),
    Result timerChanged(TimerChanged value),
    Result cropSelected(CropSelected value),
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
  const factory DeleteCrop(int cropIndex) = _$DeleteCrop;

  int get cropIndex;
  $DeleteCropCopyWith<DeleteCrop> get copyWith;
}

abstract class $DeleteCropsCopyWith<$Res> {
  factory $DeleteCropsCopyWith(
          DeleteCrops value, $Res Function(DeleteCrops) then) =
      _$DeleteCropsCopyWithImpl<$Res>;
}

class _$DeleteCropsCopyWithImpl<$Res> extends _$CropsEventCopyWithImpl<$Res>
    implements $DeleteCropsCopyWith<$Res> {
  _$DeleteCropsCopyWithImpl(
      DeleteCrops _value, $Res Function(DeleteCrops) _then)
      : super(_value, (v) => _then(v as DeleteCrops));

  @override
  DeleteCrops get _value => super._value as DeleteCrops;
}

class _$DeleteCrops implements DeleteCrops {
  const _$DeleteCrops();

  @override
  String toString() {
    return 'CropsEvent.deleteCrops()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeleteCrops);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getCrops(),
    @required Result createCrop(),
    @required Result deleteCrop(int cropIndex),
    @required Result deleteCrops(),
    @required Result nameChanged(String name),
    @required Result pictureChanged(String picture),
    @required Result timerChanged(int timer, int index),
    @required Result cropSelected(Crop crop),
  }) {
    assert(getCrops != null);
    assert(createCrop != null);
    assert(deleteCrop != null);
    assert(deleteCrops != null);
    assert(nameChanged != null);
    assert(pictureChanged != null);
    assert(timerChanged != null);
    assert(cropSelected != null);
    return deleteCrops();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCrops(),
    Result createCrop(),
    Result deleteCrop(int cropIndex),
    Result deleteCrops(),
    Result nameChanged(String name),
    Result pictureChanged(String picture),
    Result timerChanged(int timer, int index),
    Result cropSelected(Crop crop),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteCrops != null) {
      return deleteCrops();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getCrops(GetCrops value),
    @required Result createCrop(CreateCrop value),
    @required Result deleteCrop(DeleteCrop value),
    @required Result deleteCrops(DeleteCrops value),
    @required Result nameChanged(NameChanged value),
    @required Result pictureChanged(PictureChanged value),
    @required Result timerChanged(TimerChanged value),
    @required Result cropSelected(CropSelected value),
  }) {
    assert(getCrops != null);
    assert(createCrop != null);
    assert(deleteCrop != null);
    assert(deleteCrops != null);
    assert(nameChanged != null);
    assert(pictureChanged != null);
    assert(timerChanged != null);
    assert(cropSelected != null);
    return deleteCrops(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCrops(GetCrops value),
    Result createCrop(CreateCrop value),
    Result deleteCrop(DeleteCrop value),
    Result deleteCrops(DeleteCrops value),
    Result nameChanged(NameChanged value),
    Result pictureChanged(PictureChanged value),
    Result timerChanged(TimerChanged value),
    Result cropSelected(CropSelected value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteCrops != null) {
      return deleteCrops(this);
    }
    return orElse();
  }
}

abstract class DeleteCrops implements CropsEvent {
  const factory DeleteCrops() = _$DeleteCrops;
}

abstract class $NameChangedCopyWith<$Res> {
  factory $NameChangedCopyWith(
          NameChanged value, $Res Function(NameChanged) then) =
      _$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

class _$NameChangedCopyWithImpl<$Res> extends _$CropsEventCopyWithImpl<$Res>
    implements $NameChangedCopyWith<$Res> {
  _$NameChangedCopyWithImpl(
      NameChanged _value, $Res Function(NameChanged) _then)
      : super(_value, (v) => _then(v as NameChanged));

  @override
  NameChanged get _value => super._value as NameChanged;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(NameChanged(
      name == freezed ? _value.name : name as String,
    ));
  }
}

class _$NameChanged implements NameChanged {
  const _$NameChanged(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'CropsEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NameChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  $NameChangedCopyWith<NameChanged> get copyWith =>
      _$NameChangedCopyWithImpl<NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getCrops(),
    @required Result createCrop(),
    @required Result deleteCrop(int cropIndex),
    @required Result deleteCrops(),
    @required Result nameChanged(String name),
    @required Result pictureChanged(String picture),
    @required Result timerChanged(int timer, int index),
    @required Result cropSelected(Crop crop),
  }) {
    assert(getCrops != null);
    assert(createCrop != null);
    assert(deleteCrop != null);
    assert(deleteCrops != null);
    assert(nameChanged != null);
    assert(pictureChanged != null);
    assert(timerChanged != null);
    assert(cropSelected != null);
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCrops(),
    Result createCrop(),
    Result deleteCrop(int cropIndex),
    Result deleteCrops(),
    Result nameChanged(String name),
    Result pictureChanged(String picture),
    Result timerChanged(int timer, int index),
    Result cropSelected(Crop crop),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getCrops(GetCrops value),
    @required Result createCrop(CreateCrop value),
    @required Result deleteCrop(DeleteCrop value),
    @required Result deleteCrops(DeleteCrops value),
    @required Result nameChanged(NameChanged value),
    @required Result pictureChanged(PictureChanged value),
    @required Result timerChanged(TimerChanged value),
    @required Result cropSelected(CropSelected value),
  }) {
    assert(getCrops != null);
    assert(createCrop != null);
    assert(deleteCrop != null);
    assert(deleteCrops != null);
    assert(nameChanged != null);
    assert(pictureChanged != null);
    assert(timerChanged != null);
    assert(cropSelected != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCrops(GetCrops value),
    Result createCrop(CreateCrop value),
    Result deleteCrop(DeleteCrop value),
    Result deleteCrops(DeleteCrops value),
    Result nameChanged(NameChanged value),
    Result pictureChanged(PictureChanged value),
    Result timerChanged(TimerChanged value),
    Result cropSelected(CropSelected value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements CropsEvent {
  const factory NameChanged(String name) = _$NameChanged;

  String get name;
  $NameChangedCopyWith<NameChanged> get copyWith;
}

abstract class $PictureChangedCopyWith<$Res> {
  factory $PictureChangedCopyWith(
          PictureChanged value, $Res Function(PictureChanged) then) =
      _$PictureChangedCopyWithImpl<$Res>;
  $Res call({String picture});
}

class _$PictureChangedCopyWithImpl<$Res> extends _$CropsEventCopyWithImpl<$Res>
    implements $PictureChangedCopyWith<$Res> {
  _$PictureChangedCopyWithImpl(
      PictureChanged _value, $Res Function(PictureChanged) _then)
      : super(_value, (v) => _then(v as PictureChanged));

  @override
  PictureChanged get _value => super._value as PictureChanged;

  @override
  $Res call({
    Object picture = freezed,
  }) {
    return _then(PictureChanged(
      picture == freezed ? _value.picture : picture as String,
    ));
  }
}

class _$PictureChanged implements PictureChanged {
  const _$PictureChanged(this.picture) : assert(picture != null);

  @override
  final String picture;

  @override
  String toString() {
    return 'CropsEvent.pictureChanged(picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PictureChanged &&
            (identical(other.picture, picture) ||
                const DeepCollectionEquality().equals(other.picture, picture)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(picture);

  @override
  $PictureChangedCopyWith<PictureChanged> get copyWith =>
      _$PictureChangedCopyWithImpl<PictureChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getCrops(),
    @required Result createCrop(),
    @required Result deleteCrop(int cropIndex),
    @required Result deleteCrops(),
    @required Result nameChanged(String name),
    @required Result pictureChanged(String picture),
    @required Result timerChanged(int timer, int index),
    @required Result cropSelected(Crop crop),
  }) {
    assert(getCrops != null);
    assert(createCrop != null);
    assert(deleteCrop != null);
    assert(deleteCrops != null);
    assert(nameChanged != null);
    assert(pictureChanged != null);
    assert(timerChanged != null);
    assert(cropSelected != null);
    return pictureChanged(picture);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCrops(),
    Result createCrop(),
    Result deleteCrop(int cropIndex),
    Result deleteCrops(),
    Result nameChanged(String name),
    Result pictureChanged(String picture),
    Result timerChanged(int timer, int index),
    Result cropSelected(Crop crop),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pictureChanged != null) {
      return pictureChanged(picture);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getCrops(GetCrops value),
    @required Result createCrop(CreateCrop value),
    @required Result deleteCrop(DeleteCrop value),
    @required Result deleteCrops(DeleteCrops value),
    @required Result nameChanged(NameChanged value),
    @required Result pictureChanged(PictureChanged value),
    @required Result timerChanged(TimerChanged value),
    @required Result cropSelected(CropSelected value),
  }) {
    assert(getCrops != null);
    assert(createCrop != null);
    assert(deleteCrop != null);
    assert(deleteCrops != null);
    assert(nameChanged != null);
    assert(pictureChanged != null);
    assert(timerChanged != null);
    assert(cropSelected != null);
    return pictureChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCrops(GetCrops value),
    Result createCrop(CreateCrop value),
    Result deleteCrop(DeleteCrop value),
    Result deleteCrops(DeleteCrops value),
    Result nameChanged(NameChanged value),
    Result pictureChanged(PictureChanged value),
    Result timerChanged(TimerChanged value),
    Result cropSelected(CropSelected value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pictureChanged != null) {
      return pictureChanged(this);
    }
    return orElse();
  }
}

abstract class PictureChanged implements CropsEvent {
  const factory PictureChanged(String picture) = _$PictureChanged;

  String get picture;
  $PictureChangedCopyWith<PictureChanged> get copyWith;
}

abstract class $TimerChangedCopyWith<$Res> {
  factory $TimerChangedCopyWith(
          TimerChanged value, $Res Function(TimerChanged) then) =
      _$TimerChangedCopyWithImpl<$Res>;
  $Res call({int timer, int index});
}

class _$TimerChangedCopyWithImpl<$Res> extends _$CropsEventCopyWithImpl<$Res>
    implements $TimerChangedCopyWith<$Res> {
  _$TimerChangedCopyWithImpl(
      TimerChanged _value, $Res Function(TimerChanged) _then)
      : super(_value, (v) => _then(v as TimerChanged));

  @override
  TimerChanged get _value => super._value as TimerChanged;

  @override
  $Res call({
    Object timer = freezed,
    Object index = freezed,
  }) {
    return _then(TimerChanged(
      timer == freezed ? _value.timer : timer as int,
      index: index == freezed ? _value.index : index as int,
    ));
  }
}

class _$TimerChanged implements TimerChanged {
  const _$TimerChanged(this.timer, {this.index}) : assert(timer != null);

  @override
  final int timer;
  @override
  final int index;

  @override
  String toString() {
    return 'CropsEvent.timerChanged(timer: $timer, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimerChanged &&
            (identical(other.timer, timer) ||
                const DeepCollectionEquality().equals(other.timer, timer)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(timer) ^
      const DeepCollectionEquality().hash(index);

  @override
  $TimerChangedCopyWith<TimerChanged> get copyWith =>
      _$TimerChangedCopyWithImpl<TimerChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getCrops(),
    @required Result createCrop(),
    @required Result deleteCrop(int cropIndex),
    @required Result deleteCrops(),
    @required Result nameChanged(String name),
    @required Result pictureChanged(String picture),
    @required Result timerChanged(int timer, int index),
    @required Result cropSelected(Crop crop),
  }) {
    assert(getCrops != null);
    assert(createCrop != null);
    assert(deleteCrop != null);
    assert(deleteCrops != null);
    assert(nameChanged != null);
    assert(pictureChanged != null);
    assert(timerChanged != null);
    assert(cropSelected != null);
    return timerChanged(timer, index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCrops(),
    Result createCrop(),
    Result deleteCrop(int cropIndex),
    Result deleteCrops(),
    Result nameChanged(String name),
    Result pictureChanged(String picture),
    Result timerChanged(int timer, int index),
    Result cropSelected(Crop crop),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (timerChanged != null) {
      return timerChanged(timer, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getCrops(GetCrops value),
    @required Result createCrop(CreateCrop value),
    @required Result deleteCrop(DeleteCrop value),
    @required Result deleteCrops(DeleteCrops value),
    @required Result nameChanged(NameChanged value),
    @required Result pictureChanged(PictureChanged value),
    @required Result timerChanged(TimerChanged value),
    @required Result cropSelected(CropSelected value),
  }) {
    assert(getCrops != null);
    assert(createCrop != null);
    assert(deleteCrop != null);
    assert(deleteCrops != null);
    assert(nameChanged != null);
    assert(pictureChanged != null);
    assert(timerChanged != null);
    assert(cropSelected != null);
    return timerChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCrops(GetCrops value),
    Result createCrop(CreateCrop value),
    Result deleteCrop(DeleteCrop value),
    Result deleteCrops(DeleteCrops value),
    Result nameChanged(NameChanged value),
    Result pictureChanged(PictureChanged value),
    Result timerChanged(TimerChanged value),
    Result cropSelected(CropSelected value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (timerChanged != null) {
      return timerChanged(this);
    }
    return orElse();
  }
}

abstract class TimerChanged implements CropsEvent {
  const factory TimerChanged(int timer, {int index}) = _$TimerChanged;

  int get timer;
  int get index;
  $TimerChangedCopyWith<TimerChanged> get copyWith;
}

abstract class $CropSelectedCopyWith<$Res> {
  factory $CropSelectedCopyWith(
          CropSelected value, $Res Function(CropSelected) then) =
      _$CropSelectedCopyWithImpl<$Res>;
  $Res call({Crop crop});

  $CropCopyWith<$Res> get crop;
}

class _$CropSelectedCopyWithImpl<$Res> extends _$CropsEventCopyWithImpl<$Res>
    implements $CropSelectedCopyWith<$Res> {
  _$CropSelectedCopyWithImpl(
      CropSelected _value, $Res Function(CropSelected) _then)
      : super(_value, (v) => _then(v as CropSelected));

  @override
  CropSelected get _value => super._value as CropSelected;

  @override
  $Res call({
    Object crop = freezed,
  }) {
    return _then(CropSelected(
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

class _$CropSelected implements CropSelected {
  const _$CropSelected(this.crop) : assert(crop != null);

  @override
  final Crop crop;

  @override
  String toString() {
    return 'CropsEvent.cropSelected(crop: $crop)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CropSelected &&
            (identical(other.crop, crop) ||
                const DeepCollectionEquality().equals(other.crop, crop)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(crop);

  @override
  $CropSelectedCopyWith<CropSelected> get copyWith =>
      _$CropSelectedCopyWithImpl<CropSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getCrops(),
    @required Result createCrop(),
    @required Result deleteCrop(int cropIndex),
    @required Result deleteCrops(),
    @required Result nameChanged(String name),
    @required Result pictureChanged(String picture),
    @required Result timerChanged(int timer, int index),
    @required Result cropSelected(Crop crop),
  }) {
    assert(getCrops != null);
    assert(createCrop != null);
    assert(deleteCrop != null);
    assert(deleteCrops != null);
    assert(nameChanged != null);
    assert(pictureChanged != null);
    assert(timerChanged != null);
    assert(cropSelected != null);
    return cropSelected(crop);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCrops(),
    Result createCrop(),
    Result deleteCrop(int cropIndex),
    Result deleteCrops(),
    Result nameChanged(String name),
    Result pictureChanged(String picture),
    Result timerChanged(int timer, int index),
    Result cropSelected(Crop crop),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cropSelected != null) {
      return cropSelected(crop);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getCrops(GetCrops value),
    @required Result createCrop(CreateCrop value),
    @required Result deleteCrop(DeleteCrop value),
    @required Result deleteCrops(DeleteCrops value),
    @required Result nameChanged(NameChanged value),
    @required Result pictureChanged(PictureChanged value),
    @required Result timerChanged(TimerChanged value),
    @required Result cropSelected(CropSelected value),
  }) {
    assert(getCrops != null);
    assert(createCrop != null);
    assert(deleteCrop != null);
    assert(deleteCrops != null);
    assert(nameChanged != null);
    assert(pictureChanged != null);
    assert(timerChanged != null);
    assert(cropSelected != null);
    return cropSelected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCrops(GetCrops value),
    Result createCrop(CreateCrop value),
    Result deleteCrop(DeleteCrop value),
    Result deleteCrops(DeleteCrops value),
    Result nameChanged(NameChanged value),
    Result pictureChanged(PictureChanged value),
    Result timerChanged(TimerChanged value),
    Result cropSelected(CropSelected value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cropSelected != null) {
      return cropSelected(this);
    }
    return orElse();
  }
}

abstract class CropSelected implements CropsEvent {
  const factory CropSelected(Crop crop) = _$CropSelected;

  Crop get crop;
  $CropSelectedCopyWith<CropSelected> get copyWith;
}

class _$CropsStateTearOff {
  const _$CropsStateTearOff();

  _CropState call(
      {@required bool isLoading,
      @required bool showErrorMessage,
      @required List<Crop> crops,
      @required String cropName,
      @required String cropPicture,
      @required int timer,
      @required Crop selectedCrop}) {
    return _CropState(
      isLoading: isLoading,
      showErrorMessage: showErrorMessage,
      crops: crops,
      cropName: cropName,
      cropPicture: cropPicture,
      timer: timer,
      selectedCrop: selectedCrop,
    );
  }
}

// ignore: unused_element
const $CropsState = _$CropsStateTearOff();

mixin _$CropsState {
  bool get isLoading;
  bool get showErrorMessage;
  List<Crop> get crops;
  String get cropName;
  String get cropPicture;
  int get timer;
  Crop get selectedCrop;

  $CropsStateCopyWith<CropsState> get copyWith;
}

abstract class $CropsStateCopyWith<$Res> {
  factory $CropsStateCopyWith(
          CropsState value, $Res Function(CropsState) then) =
      _$CropsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool showErrorMessage,
      List<Crop> crops,
      String cropName,
      String cropPicture,
      int timer,
      Crop selectedCrop});

  $CropCopyWith<$Res> get selectedCrop;
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
    Object cropName = freezed,
    Object cropPicture = freezed,
    Object timer = freezed,
    Object selectedCrop = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage as bool,
      crops: crops == freezed ? _value.crops : crops as List<Crop>,
      cropName: cropName == freezed ? _value.cropName : cropName as String,
      cropPicture:
          cropPicture == freezed ? _value.cropPicture : cropPicture as String,
      timer: timer == freezed ? _value.timer : timer as int,
      selectedCrop:
          selectedCrop == freezed ? _value.selectedCrop : selectedCrop as Crop,
    ));
  }

  @override
  $CropCopyWith<$Res> get selectedCrop {
    if (_value.selectedCrop == null) {
      return null;
    }
    return $CropCopyWith<$Res>(_value.selectedCrop, (value) {
      return _then(_value.copyWith(selectedCrop: value));
    });
  }
}

abstract class _$CropStateCopyWith<$Res> implements $CropsStateCopyWith<$Res> {
  factory _$CropStateCopyWith(
          _CropState value, $Res Function(_CropState) then) =
      __$CropStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool showErrorMessage,
      List<Crop> crops,
      String cropName,
      String cropPicture,
      int timer,
      Crop selectedCrop});

  @override
  $CropCopyWith<$Res> get selectedCrop;
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
    Object cropName = freezed,
    Object cropPicture = freezed,
    Object timer = freezed,
    Object selectedCrop = freezed,
  }) {
    return _then(_CropState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage as bool,
      crops: crops == freezed ? _value.crops : crops as List<Crop>,
      cropName: cropName == freezed ? _value.cropName : cropName as String,
      cropPicture:
          cropPicture == freezed ? _value.cropPicture : cropPicture as String,
      timer: timer == freezed ? _value.timer : timer as int,
      selectedCrop:
          selectedCrop == freezed ? _value.selectedCrop : selectedCrop as Crop,
    ));
  }
}

class _$_CropState implements _CropState {
  const _$_CropState(
      {@required this.isLoading,
      @required this.showErrorMessage,
      @required this.crops,
      @required this.cropName,
      @required this.cropPicture,
      @required this.timer,
      @required this.selectedCrop})
      : assert(isLoading != null),
        assert(showErrorMessage != null),
        assert(crops != null),
        assert(cropName != null),
        assert(cropPicture != null),
        assert(timer != null),
        assert(selectedCrop != null);

  @override
  final bool isLoading;
  @override
  final bool showErrorMessage;
  @override
  final List<Crop> crops;
  @override
  final String cropName;
  @override
  final String cropPicture;
  @override
  final int timer;
  @override
  final Crop selectedCrop;

  @override
  String toString() {
    return 'CropsState(isLoading: $isLoading, showErrorMessage: $showErrorMessage, crops: $crops, cropName: $cropName, cropPicture: $cropPicture, timer: $timer, selectedCrop: $selectedCrop)';
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
                const DeepCollectionEquality().equals(other.crops, crops)) &&
            (identical(other.cropName, cropName) ||
                const DeepCollectionEquality()
                    .equals(other.cropName, cropName)) &&
            (identical(other.cropPicture, cropPicture) ||
                const DeepCollectionEquality()
                    .equals(other.cropPicture, cropPicture)) &&
            (identical(other.timer, timer) ||
                const DeepCollectionEquality().equals(other.timer, timer)) &&
            (identical(other.selectedCrop, selectedCrop) ||
                const DeepCollectionEquality()
                    .equals(other.selectedCrop, selectedCrop)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(showErrorMessage) ^
      const DeepCollectionEquality().hash(crops) ^
      const DeepCollectionEquality().hash(cropName) ^
      const DeepCollectionEquality().hash(cropPicture) ^
      const DeepCollectionEquality().hash(timer) ^
      const DeepCollectionEquality().hash(selectedCrop);

  @override
  _$CropStateCopyWith<_CropState> get copyWith =>
      __$CropStateCopyWithImpl<_CropState>(this, _$identity);
}

abstract class _CropState implements CropsState {
  const factory _CropState(
      {@required bool isLoading,
      @required bool showErrorMessage,
      @required List<Crop> crops,
      @required String cropName,
      @required String cropPicture,
      @required int timer,
      @required Crop selectedCrop}) = _$_CropState;

  @override
  bool get isLoading;
  @override
  bool get showErrorMessage;
  @override
  List<Crop> get crops;
  @override
  String get cropName;
  @override
  String get cropPicture;
  @override
  int get timer;
  @override
  Crop get selectedCrop;
  @override
  _$CropStateCopyWith<_CropState> get copyWith;
}
