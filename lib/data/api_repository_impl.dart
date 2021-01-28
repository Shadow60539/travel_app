import 'package:http/http.dart';

import 'api_end_points.dart';

class ApiRepositoryImpl {
  Future<dynamic> getAllPlaces() async {
    return get(
      ApiEndPoints.getAllPlaces,
    ).then(
      (value) => value.body,
      onError: (error) => error.response,
    );
  }
}
