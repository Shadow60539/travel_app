import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_app/infrastructure/data/api_end_points.dart';
import 'package:travel_app/infrastructure/exceptions/places_exceptions.dart';
import 'package:travel_app/infrastructure/models/place_model.dart';

abstract class IPlaceRemoteDataSource {
  /// Fetch All Places
  ///
  /// Throws [Server Exception] on unsuccessful status
  /// Return [Future<List<PlaceModel>>] on success
  Future<List<PlaceModel>> getAllPlaces();
}

@Injectable(as: IPlaceRemoteDataSource)
@prod
class PlaceRemoteDataSource extends IPlaceRemoteDataSource {
  final Dio dio;

  PlaceRemoteDataSource(this.dio);
  @override
  Future<List<PlaceModel>> getAllPlaces() async {
    try {
      final Response response = await dio.get(ApiEndPoints.getAllPlaces);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<PlaceModel> places = [];

        for (final raw in response.data) {
          places.add(PlaceModel.fromJson(raw as Map<String, dynamic>));
        }

        return places;
      } else {
        throw const ServerException();
      }
    } on ServerException {
      throw const ServerException();
    } catch (e) {
      throw const ClientException();
    }
  }
}
