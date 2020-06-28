// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'crop.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Crop _$CropFromJson(Map<String, dynamic> json) {
  return _Crop.fromJson(json);
}

class _$CropTearOff {
  const _$CropTearOff();

  _Crop call(
      {@required String name,
      @required String picture,
      @required DateTime cropStartDate,
      @required int originalTimer,
      @required int timer}) {
    return _Crop(
      name: name,
      picture: picture,
      cropStartDate: cropStartDate,
      originalTimer: originalTimer,
      timer: timer,
    );
  }
}

// ignore: unused_element
const $Crop = _$CropTearOff();

mixin _$Crop {
  String get name;
  String get picture;
  DateTime get cropStartDate;
  int get originalTimer;
  int get timer;

  Map<String, dynamic> toJson();
  $CropCopyWith<Crop> get copyWith;
}

abstract class $CropCopyWith<$Res> {
  factory $CropCopyWith(Crop value, $Res Function(Crop) then) =
      _$CropCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String picture,
      DateTime cropStartDate,
      int originalTimer,
      int timer});
}

class _$CropCopyWithImpl<$Res> implements $CropCopyWith<$Res> {
  _$CropCopyWithImpl(this._value, this._then);

  final Crop _value;
  // ignore: unused_field
  final $Res Function(Crop) _then;

  @override
  $Res call({
    Object name = freezed,
    Object picture = freezed,
    Object cropStartDate = freezed,
    Object originalTimer = freezed,
    Object timer = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      picture: picture == freezed ? _value.picture : picture as String,
      cropStartDate: cropStartDate == freezed
          ? _value.cropStartDate
          : cropStartDate as DateTime,
      originalTimer: originalTimer == freezed
          ? _value.originalTimer
          : originalTimer as int,
      timer: timer == freezed ? _value.timer : timer as int,
    ));
  }
}

abstract class _$CropCopyWith<$Res> implements $CropCopyWith<$Res> {
  factory _$CropCopyWith(_Crop value, $Res Function(_Crop) then) =
      __$CropCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String picture,
      DateTime cropStartDate,
      int originalTimer,
      int timer});
}

class __$CropCopyWithImpl<$Res> extends _$CropCopyWithImpl<$Res>
    implements _$CropCopyWith<$Res> {
  __$CropCopyWithImpl(_Crop _value, $Res Function(_Crop) _then)
      : super(_value, (v) => _then(v as _Crop));

  @override
  _Crop get _value => super._value as _Crop;

  @override
  $Res call({
    Object name = freezed,
    Object picture = freezed,
    Object cropStartDate = freezed,
    Object originalTimer = freezed,
    Object timer = freezed,
  }) {
    return _then(_Crop(
      name: name == freezed ? _value.name : name as String,
      picture: picture == freezed ? _value.picture : picture as String,
      cropStartDate: cropStartDate == freezed
          ? _value.cropStartDate
          : cropStartDate as DateTime,
      originalTimer: originalTimer == freezed
          ? _value.originalTimer
          : originalTimer as int,
      timer: timer == freezed ? _value.timer : timer as int,
    ));
  }
}

@JsonSerializable()
class _$_Crop implements _Crop {
  _$_Crop(
      {@required this.name,
      @required this.picture,
      @required this.cropStartDate,
      @required this.originalTimer,
      @required this.timer})
      : assert(name != null),
        assert(picture != null),
        assert(cropStartDate != null),
        assert(originalTimer != null),
        assert(timer != null);

  factory _$_Crop.fromJson(Map<String, dynamic> json) =>
      _$_$_CropFromJson(json);

  @override
  final String name;
  @override
  final String picture;
  @override
  final DateTime cropStartDate;
  @override
  final int originalTimer;
  @override
  final int timer;

  @override
  String toString() {
    return 'Crop(name: $name, picture: $picture, cropStartDate: $cropStartDate, originalTimer: $originalTimer, timer: $timer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Crop &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.picture, picture) ||
                const DeepCollectionEquality()
                    .equals(other.picture, picture)) &&
            (identical(other.cropStartDate, cropStartDate) ||
                const DeepCollectionEquality()
                    .equals(other.cropStartDate, cropStartDate)) &&
            (identical(other.originalTimer, originalTimer) ||
                const DeepCollectionEquality()
                    .equals(other.originalTimer, originalTimer)) &&
            (identical(other.timer, timer) ||
                const DeepCollectionEquality().equals(other.timer, timer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(picture) ^
      const DeepCollectionEquality().hash(cropStartDate) ^
      const DeepCollectionEquality().hash(originalTimer) ^
      const DeepCollectionEquality().hash(timer);

  @override
  _$CropCopyWith<_Crop> get copyWith =>
      __$CropCopyWithImpl<_Crop>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CropToJson(this);
  }
}

abstract class _Crop implements Crop {
  factory _Crop(
      {@required String name,
      @required String picture,
      @required DateTime cropStartDate,
      @required int originalTimer,
      @required int timer}) = _$_Crop;

  factory _Crop.fromJson(Map<String, dynamic> json) = _$_Crop.fromJson;

  @override
  String get name;
  @override
  String get picture;
  @override
  DateTime get cropStartDate;
  @override
  int get originalTimer;
  @override
  int get timer;
  @override
  _$CropCopyWith<_Crop> get copyWith;
}
