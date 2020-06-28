// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Crop _$_$_CropFromJson(Map<String, dynamic> json) {
  return _$_Crop(
    name: json['name'] as String,
    picture: json['picture'] as String,
    cropStartDate: json['cropStartDate'] == null
        ? null
        : DateTime.parse(json['cropStartDate'] as String),
    originalTimer: json['originalTimer'] as int,
    timer: json['timer'] as int,
  );
}

Map<String, dynamic> _$_$_CropToJson(_$_Crop instance) => <String, dynamic>{
      'name': instance.name,
      'picture': instance.picture,
      'cropStartDate': instance.cropStartDate?.toIso8601String(),
      'originalTimer': instance.originalTimer,
      'timer': instance.timer,
    };
