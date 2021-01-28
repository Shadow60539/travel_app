

part of 'places_bloc.dart';


@freezed
abstract class PlacesEvent with _$PlacesEvent {
  const factory PlacesEvent.getAllPlaces() = AllPlacesEvent;
  const factory PlacesEvent.getFavCount() = FavCountEvent;
}