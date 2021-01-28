import 'package:travel_app/data/api_repository_impl.dart';

class ApiRepository {
  final ApiRepositoryImpl _apiRepositoryImpl = ApiRepositoryImpl();
  Future<dynamic> getAllPlaces() async {
    return _apiRepositoryImpl.getAllPlaces();
  }
}
