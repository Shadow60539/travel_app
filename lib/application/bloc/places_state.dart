part of 'places_bloc.dart';

@freezed
class PlacesState with _$PlacesState {
  const factory PlacesState({
    required List<Place> places,
    required Option<Either<PlacesFailure, List<Place>>> placesOption,
    bool? isLoading,
    int? favCount,
  }) = _PlacesState;

  factory PlacesState.initial() {
    return const PlacesState(
      places: [],
      isLoading: true,
      favCount: 0,
      placesOption: None(),
    );
  }
}
