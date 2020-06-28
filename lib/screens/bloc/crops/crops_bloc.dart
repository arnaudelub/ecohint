import 'dart:async';
import 'package:injectable/injectable.dart';
import 'package:ecohint/core/storage.dart';
import 'package:ecohint/models/crop.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'crops_event.dart';
part 'crops_state.dart';

part 'crops_bloc.freezed.dart';

@injectable
class CropsBloc extends Bloc<CropsEvent, CropsState> {
  final IStorage _storage;

  CropsBloc(this._storage);

  @override
  CropsState get initialState => CropsState.initial();

  @override
  Stream<CropsState> mapEventToState(
    CropsEvent event,
  ) async* {
    List<Crop> listCrops = state.crops;
    yield* event.map(createCrop: (CreateCrop value) async* {
      yield state.copyWith(isLoading: true);
      final Crop crop = Crop(
          name: state.cropName,
          picture: state.cropPicture,
          cropStartDate: DateTime.now(),
          timer: 0);
      await _storage.storeCrop(crop);
      listCrops.add(crop);
      yield state.copyWith(
        isLoading: false,
        crops: listCrops,
      );
    }, deleteCrop: (DeleteCrop value) async* {
      yield state.copyWith(
        isLoading: true,
      );
      await _storage.removeCrop('crop_${value.crop.name}');
      listCrops.remove(value.crop);
      yield state.copyWith(
        isLoading: false,
        crops: listCrops,
      );
    }, deleteCrops: (DeleteCrops value) async* {
      yield state.copyWith(
        isLoading: true,
      );
      await _storage.removeCrops();
      listCrops.clear();
      yield state.copyWith(
        isLoading: false,
        crops: listCrops,
      );
    }, getCrops: (GetCrops value) async* {
      yield state.copyWith(
        isLoading: true,
      );
      listCrops = _storage.getCrops();
      yield state.copyWith(
        isLoading: false,
        crops: listCrops,
      );
    }, nameChanged: (NameChanged value) async* {
      yield state.copyWith(cropName: value.name);
    }, pictureChanged: (PictureChanged value) async* {
      yield state.copyWith(cropPicture: value.picture);
    });
  }
}
