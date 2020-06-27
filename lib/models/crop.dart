import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
part 'crop.freezed.dart';

@freezed
abstract class Crop with _$Crop {
  const factory Crop({
    @required String name,
    @required String picture,
    @required DateTime cropStartDate,
    @required int timer,
  }) = _Crop;
}
