part of 'crops_bloc.dart';

@freezed
abstract class CropsState with _$CropsState {
  const factory CropsState({
    @required bool isLoading,
    @required bool showErrorMessage,
    @required List<Crop> crops,
    @required String cropName,
    @required String cropPicture,
    @required int timer,
    @required Crop selectedCrop,
  }) = _CropState;

  factory CropsState.initial() => CropsState(
        isLoading: false,
        showErrorMessage: false,
        crops: [],
        cropName: '',
        cropPicture: '',
        timer: 0,
        selectedCrop: Crop(
            name: '',
            picture: '',
            originalTimer: 0,
            timer: 0,
            cropStartDate: DateTime.now()),
      );
}
