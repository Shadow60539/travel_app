import 'package:dartz/dartz.dart';
import 'package:travel_app/domain/place.dart';
import 'package:travel_app/domain/places_failure.dart';

abstract class IPlacesRepository {
  Future<Either<PlacesFailure, List<Place>>> getAllPlaces();
}
