import 'package:travel_app/core/models/place.dart';
import 'package:travel_app/data/api_repository.dart';

abstract class PlacesRepository {
  Future<List<Place>> getAllPlaces();
}

class PlacesRepositoryImpl extends PlacesRepository {
  final ApiRepository _apiRepository = ApiRepository();

  @override
  Future<List<Place>> getAllPlaces() async {
    final result = await _apiRepository.getAllPlaces();
    return placeFromJson(result as String);
  }
}
