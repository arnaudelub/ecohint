import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
part 'crop.freezed.dart';
part 'crop.g.dart';

@freezed
abstract class Crop with _$Crop {
  factory Crop({
    @required String name,
    @required String picture,
    @required DateTime cropStartDate,
    @required int originalTimer,
    @required int timer,
  }) = _Crop;

  factory Crop.fromJson(Map<String, dynamic> json) => _$CropFromJson(json);
}
