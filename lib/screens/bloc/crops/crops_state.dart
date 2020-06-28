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
  }) = _CropState;

  factory CropsState.initial() => const CropsState(
        isLoading: false,
        showErrorMessage: false,
        crops: [],
        cropName: '',
        cropPicture: '',
        timer: 0,
      );
}
