part of 'crops_bloc.dart';

@freezed
abstract class CropsEvent with _$CropsEvent {
  const factory CropsEvent.getCrops() = GetCrops;
  const factory CropsEvent.createCrop() = CreateCrop;
  const factory CropsEvent.deleteCrop(int cropIndex) = DeleteCrop;
  const factory CropsEvent.deleteCrops() = DeleteCrops;
  const factory CropsEvent.nameChanged(String name) = NameChanged;
  const factory CropsEvent.pictureChanged(String picture) = PictureChanged;
  const factory CropsEvent.timerChanged(int timer, {int index}) = TimerChanged;
  const factory CropsEvent.cropSelected(Crop crop) = CropSelected;
}
