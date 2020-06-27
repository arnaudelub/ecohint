part of 'crops_bloc.dart';

@freezed
abstract class CropsState with _$CropsState {
  const factory CropsState(
      {@required bool isLoading,
      @required bool showErrorMessage,
      @required List<Crop> crops,
      @required String cropName,
      @required String cropPicture}) = _CropState;

  factory CropsState.initial() => CropsState(
        isLoading: false,
        showErrorMessage: false,
        crops: getIt<IStorage>().getCrops(),
        cropName: '',
        cropPicture: '',
      );
}
