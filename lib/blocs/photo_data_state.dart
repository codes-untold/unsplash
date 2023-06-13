import 'package:equatable/equatable.dart';
import 'package:unsplash/models/photo_response_model.dart';

abstract class PhotoDataState extends Equatable {
  const PhotoDataState();
}

class PhotoDataInitialState extends PhotoDataState {
  @override
  List<Object?> get props => [];
}

class PhotoDataStateLoading extends PhotoDataState {
  @override
  List<Object?> get props => [];
}

class PhotoDataLoaded extends PhotoDataState {
  const PhotoDataLoaded({required this.data, this.isPaginating = false});
  final List<PhotoResponseModel> data;
  final bool isPaginating;
  @override
  List<Object?> get props => [data, isPaginating];
}

class PhotoDataFetchFailed extends PhotoDataState {
  const PhotoDataFetchFailed();
  @override
  List<Object?> get props => [];
}

class PhotoDataNetworkFailed extends PhotoDataState {
  const PhotoDataNetworkFailed();
  @override
  List<Object?> get props => [];
}
