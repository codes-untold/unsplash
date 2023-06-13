import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unsplash/blocs/photo_data_state.dart';
import 'package:unsplash/models/photo_response_model.dart';
import 'package:unsplash/networking/api_service.dart';

class PhotoDataStateCubit extends Cubit<PhotoDataState> {
  PhotoDataStateCubit() : super(PhotoDataInitialState());

  Future<void> getPhotos(String page) async {
    final currentState = state;
    if (currentState is PhotoDataLoaded) {
      emit(PhotoDataLoaded(data: currentState.data, isPaginating: true));
    } else {
      emit(PhotoDataStateLoading());
    }

    ApiService.fetchImages(page: page).then((List<PhotoResponseModel>? data) {
      if (data == null) {
        emit(const PhotoDataFetchFailed());
        return;
      }
      emit(PhotoDataLoaded(data: data, isPaginating: false));
    }).onError((error, stackTrace) {
      emit(const PhotoDataFetchFailed());
    });
  }
}
