part of 'places_bloc.dart';

@freezed
abstract class PlacesState with _$PlacesState {
  const factory PlacesState({
    @required List<Place> places,
    bool isLoading,
    int favCount
  }) = _PlacesState;

  factory PlacesState.initial() {
    return const PlacesState(places: [], isLoading: true, favCount: 0);
  }
}
