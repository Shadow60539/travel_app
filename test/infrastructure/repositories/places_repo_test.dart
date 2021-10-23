import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:travel_app/domain/entities/place.dart';
import 'package:travel_app/domain/failures/places_failure.dart';
import 'package:travel_app/infrastructure/data/place_remote_data_source.dart';
import 'package:travel_app/infrastructure/exceptions/places_exceptions.dart';
import 'package:travel_app/infrastructure/models/place_model.dart';
import 'package:travel_app/infrastructure/repositories/places_repo.dart';

import 'places_repo_test.mocks.dart';

@GenerateMocks([PlaceRemoteDataSource])
void main() {
  late PlacesRepo repo;
  late MockPlaceRemoteDataSource mockRemoteDataSource;
  final List<PlaceModel> tPlacesModel = [];
  final List<Place> tPlaces = tPlacesModel;

  setUp(() {
    mockRemoteDataSource = MockPlaceRemoteDataSource();
    repo = PlacesRepo(mockRemoteDataSource);
  });

  group('getAllPlaces', () {
    test(
      'should return [Right(List<Place>)] when call to repo is success',
      () async {
        // arrange
        when(mockRemoteDataSource.getAllPlaces())
            .thenAnswer((_) async => tPlacesModel);

        // act
        final result = await repo.getAllPlaces();

        // assert
        expect(result, Right<PlacesFailure, List<Place>>(tPlaces));
        verify(mockRemoteDataSource.getAllPlaces());
        verifyNoMoreInteractions(mockRemoteDataSource);
      },
    );
    test(
      'should return [Left(ClientFailure)] when [ClientException] is thrown',
      () async {
        // arrange
        when(mockRemoteDataSource.getAllPlaces())
            .thenThrow(const ClientException());

        // act
        final result = await repo.getAllPlaces();

        // assert
        expect(result, const Left(PlacesFailure.clientFailure()));
        verify(mockRemoteDataSource.getAllPlaces());
        verifyNoMoreInteractions(mockRemoteDataSource);
      },
    );

    test(
      'should return [Left(ServerFailure)] when [ServerException] is thrown',
      () async {
        // arrange
        when(mockRemoteDataSource.getAllPlaces())
            .thenThrow(const ServerException());

        // act
        final result = await repo.getAllPlaces();

        // assert
        expect(result, const Left(PlacesFailure.serverFailure()));
        verify(mockRemoteDataSource.getAllPlaces());
        verifyNoMoreInteractions(mockRemoteDataSource);
      },
    );
  });
}
