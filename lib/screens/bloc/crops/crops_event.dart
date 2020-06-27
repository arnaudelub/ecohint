part of 'crops_bloc.dart';

@freezed
abstract class CropsEvent with _$CropsEvent {
  const factory CropsEvent.getCrops() = GetCrops;
  const factory CropsEvent.createCrop(Crop crop) = CreateCrop;
  const factory CropsEvent.deleteCrop(Crop crop) = DeleteCrop;
}
