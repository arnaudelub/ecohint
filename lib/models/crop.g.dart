// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_Crop _$_$_CropFromJson(Map<String, dynamic> json) {
  return _$_Crop(
    name: json['name'] as String,
    picture: json['picture'] as String,
    cropStartDate: json['cropStartDate'] == null
        ? null
        : DateTime.parse(json['cropStartDate'] as String),
    timer: json['timer'] as int,
  );
}

// ignore: non_constant_identifier_names
Map<String, dynamic> _$_$_CropToJson(_$_Crop instance) => <String, dynamic>{
      'name': instance.name,
      'picture': instance.picture,
      'cropStartDate': instance.cropStartDate?.toIso8601String(),
      'timer': instance.timer,
    };
