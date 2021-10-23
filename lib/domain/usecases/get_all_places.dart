import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_app/core/usecase.dart';
import 'package:travel_app/domain/entities/place.dart';
import 'package:travel_app/domain/failures/places_failure.dart';
import 'package:travel_app/domain/repositories/i_places_repository.dart';

@injectable
@prod
class GetAllPlaces implements Usecase<PlacesFailure, List<Place>, NoParams> {
  /// Usecase for fetch all places
  ///
  /// Direct call to `IPlacesRepository`
  const GetAllPlaces(this.repository);

  final IPlacesRepository repository;

  @override
  Future<Either<PlacesFailure, List<Place>>> call(NoParams _) async =>
      repository.getAllPlaces();
}
