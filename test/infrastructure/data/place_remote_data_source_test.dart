import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:travel_app/domain/entities/tour.dart';
import 'package:travel_app/infrastructure/data/api_end_points.dart';
import 'package:travel_app/infrastructure/data/place_remote_data_source.dart';
import 'package:travel_app/infrastructure/exceptions/places_exceptions.dart';
import 'package:travel_app/infrastructure/models/place_model.dart';
import 'package:travel_app/infrastructure/models/tour_model.dart';

import 'place_remote_data_source_test.mocks.dart';

@GenerateMocks([Dio])
void main() {
  late MockDio mockDio;
  late PlaceRemoteDataSource dataSource;
  late List<PlaceModel> tPlacesModel;

  setUp(() {
    tPlacesModel = const [
      PlaceModel(
          id: 1,
          description: "",
          duration: 1,
          imgUrl: "",
          name: "",
          price: 1,
          rating: 1,
          reviews: 1,
          tours: [
            TourModel(
              date: "",
              desc: "",
              distance: 1,
              img: "",
              name: "",
            ),
          ])
    ];
    mockDio = MockDio();
    dataSource = PlaceRemoteDataSource(mockDio);
  });

  void setUpMockHttpClientSuccess200() {
    when(mockDio.get(any)).thenAnswer((_) async => Response(data: [
          {
            "_id": 1,
            "description": "",
            "duration": 1,
            "img_url": "",
            "name": "",
            "price": 1,
            "rating": 1,
            "reviews": 1,
            "tours": [
              {
                "date": "",
                "desc": "",
                "distance": 1,
                "img": "",
                "name": "",
              }
            ]
          }
        ], statusCode: 200, requestOptions: RequestOptions(path: "any")));
  }

  void setUpMockHttpClientNullResponse() {
    when(mockDio.get(any)).thenAnswer((_) async => Response(
        data: null,
        statusCode: 200,
        requestOptions: RequestOptions(path: "any")));
  }

  void setUpMockHttpClientFailure404() {
    when(mockDio.get(any)).thenAnswer((_) async => Response(
        data: 'Something went wrong',
        statusCode: 404,
        requestOptions: RequestOptions(path: "any")));
  }

  group('getAllPlaces', () {
    test('should throw [ServerException] when 404', () async {
      // arrange
      setUpMockHttpClientFailure404();
      // act
      final result = dataSource.getAllPlaces();
      // assert
      expect(() => result, throwsA(const TypeMatcher<ServerException>()));
      verify(mockDio.get(ApiEndPoints.getAllPlaces));
    });
    test('should throw [ClientException] when 404', () async {
      // arrange
      setUpMockHttpClientNullResponse();
      // act
      final result = dataSource.getAllPlaces();
      // assert
      expect(() => result, throwsA(const TypeMatcher<ClientException>()));
      verify(mockDio.get(ApiEndPoints.getAllPlaces));
    });

    test('should return [List<PlaceModel>] on success', () async {
      // arrange
      setUpMockHttpClientSuccess200();
      // act
      final result = await dataSource.getAllPlaces();
      // assert
      expect(result, tPlacesModel);
      verify(mockDio.get(ApiEndPoints.getAllPlaces));
    });
  });
}
