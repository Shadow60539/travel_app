part of 'places_bloc.dart';

@freezed
class PlacesEvent with _$PlacesEvent {
  const factory PlacesEvent.getAllPlaces() = AllPlacesEvent;
  // const factory PlacesEvent.getFavCount() = FavCountEvent;
  const factory PlacesEvent.markFavorite(int id) = _MarkFavorite;
}
