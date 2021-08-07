import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_app/domain/place.dart';
import 'package:travel_app/infrastructure/api_end_points.dart';
import 'package:travel_app/domain/i_places_repository.dart';
import 'package:travel_app/domain/places_failure.dart';

@Injectable(as: IPlacesRepository)
@prod
class PlacesRepo extends IPlacesRepository {
  @override
  Future<Either<PlacesFailure, List<Place>>> getAllPlaces() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.getAllPlaces);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<Place> places = [];

        for (final raw in response.data) {
          places.add(Place.fromJson(raw as Map<String, dynamic>));
        }

        return Right(places);
      } else {
        return const Left(PlacesFailure.serverFailure());
      }
    } catch (e) {
      return const Left(PlacesFailure.clientFailure());
    }
  }
}
