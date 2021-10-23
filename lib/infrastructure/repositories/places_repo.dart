import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_app/domain/entities/place.dart';
import 'package:travel_app/domain/failures/places_failure.dart';
import 'package:travel_app/domain/repositories/i_places_repository.dart';
import 'package:travel_app/infrastructure/data/place_remote_data_source.dart';
import 'package:travel_app/infrastructure/exceptions/places_exceptions.dart';

@Injectable(as: IPlacesRepository)
@prod
class PlacesRepo extends IPlacesRepository {
  final IPlaceRemoteDataSource remoteDataSource;

  PlacesRepo(this.remoteDataSource);
  @override
  Future<Either<PlacesFailure, List<Place>>> getAllPlaces() async {
    try {
      final List<Place> places = await remoteDataSource.getAllPlaces();
      return Right(places);
    } on ServerException {
      return const Left(PlacesFailure.serverFailure());
    } on ClientException {
      return const Left(PlacesFailure.clientFailure());
    }
  }
}
