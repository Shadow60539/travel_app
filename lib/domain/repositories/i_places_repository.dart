import 'package:dartz/dartz.dart';
import 'package:travel_app/domain/entities/place.dart';
import 'package:travel_app/domain/failures/places_failure.dart';

abstract class IPlacesRepository {
  /// Get All Places Abstract Repository
  Future<Either<PlacesFailure, List<Place>>> getAllPlaces();
}
