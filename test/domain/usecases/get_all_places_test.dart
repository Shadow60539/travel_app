import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:travel_app/core/usecase.dart';
import 'package:travel_app/domain/entities/place.dart';
import 'package:travel_app/domain/repositories/i_places_repository.dart';
import 'package:travel_app/domain/usecases/get_all_places.dart';

import 'get_all_places_test.mocks.dart';

@GenerateMocks([IPlacesRepository])
void main() {
  late GetAllPlaces usecase;
  late MockIPlacesRepository authRepository;

  /*
  const Place tPlace = Place(
    id: -1,
    description: "description",
    duration: -1,
    imgUrl: "imgUrl",
    name: "name",
    price: -1,
    rating: -1,
    reviews: -1,
    tours: [],
  );
  */

  const List<Place> tPlaces = [];

  setUp(() {
    authRepository = MockIPlacesRepository();
    usecase = GetAllPlaces(authRepository);
  });

  test('should call [getAllPlaces] on the repository', () async {
    // arrange
    when(authRepository.getAllPlaces()).thenAnswer((_) async => const Right(tPlaces));

    // act
    final result = await usecase(const NoParams());

    // assert

    expect(result, const Right(tPlaces));
    verify(authRepository.getAllPlaces());
    verifyNoMoreInteractions(authRepository);
  });
}
