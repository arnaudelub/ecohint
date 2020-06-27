part of 'crops_bloc.dart';

@freezed
abstract class CropsEvent with _$CropsEvent {
  const factory CropsEvent.getCrops() = GetCrops;
  const factory CropsEvent.createCrop() = CreateCrop;
  const factory CropsEvent.deleteCrop(Crop crop) = DeleteCrop;
  const factory CropsEvent.nameChanged(String name) = NameChanged;
  const factory CropsEvent.pictureChanged(String picture) = PictureChanged;
}
