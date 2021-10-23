import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:travel_app/application/bloc/places_bloc.dart';
import 'package:travel_app/core/usecase.dart';
import 'package:travel_app/domain/entities/place.dart';
import 'package:travel_app/domain/entities/tour.dart';
import 'package:travel_app/domain/failures/places_failure.dart';
import 'package:travel_app/domain/usecases/get_all_places.dart';

import 'places_bloc_test.mocks.dart';

@GenerateMocks([GetAllPlaces])
void main() {
  late PlacesBloc placesBloc;

  late MockGetAllPlaces mockGetAllPlaces;

  setUp(() {
    mockGetAllPlaces = MockGetAllPlaces();
    placesBloc = PlacesBloc(mockGetAllPlaces);
  });

  test('initial state should be [PlaceState.initial()]', () {
    // assert
    expect(placesBloc.state, PlacesState.initial());
  });

  const int tId = 1;
  final List<Place> tPlaces = [
    Place(
      id: 1,
      description: "",
      duration: 1,
      imgUrl: "",
      name: "",
      price: 1,
      rating: 1,
      reviews: 1,
      tours: [
        Tour(
          date: "",
          desc: "",
          distance: 1,
          img: "",
          name: "",
        ),
      ],
      isFav: false,
    )
  ];

  group('getAllPlaces', () {
    final Either<PlacesFailure, List<Place>> tSuccess = Right(tPlaces);

    void setUpAuthFailureTest(PlacesFailure failure) {
      blocTest<PlacesBloc, PlacesState>(
        'should store [$failure] in [placesOption] when [usecase] return [$failure]',
        build: () {
          when(mockGetAllPlaces(const NoParams()))
              .thenAnswer((_) async => Left(failure));

          return placesBloc;
        },
        act: (bloc) => bloc.add(const PlacesEvent.getAllPlaces()),
        expect: () => <PlacesState>[
          placesBloc.state.copyWith(
            isLoading: true,
            placesOption: const None(),
            places: [],
          ),
          placesBloc.state
              .copyWith(places: [], placesOption: Some(Left(failure))),
        ],
        // verify: (_) {},
      );
    }

    blocTest<PlacesBloc, PlacesState>(
      'should call [usecase] when [getAllPlaces] is called',
      build: () {
        when(mockGetAllPlaces(const NoParams()))
            .thenAnswer((_) async => tSuccess);

        return placesBloc;
      },
      act: (bloc) => bloc.add(const PlacesEvent.getAllPlaces()),
      expect: () => <PlacesState>[
        placesBloc.state.copyWith(
          isLoading: true,
          placesOption: const None(),
          places: [],
        ),
        placesBloc.state
            .copyWith(places: tPlaces, placesOption: Some(Right(tPlaces))),
      ],
      verify: (_) {
        verify(mockGetAllPlaces(const NoParams()));
      },
    );
    blocTest<PlacesBloc, PlacesState>(
      'should store [tPlaces] in state when [usecase] is success',
      build: () {
        when(mockGetAllPlaces(const NoParams()))
            .thenAnswer((_) async => tSuccess);

        return placesBloc;
      },
      act: (bloc) => bloc.add(const PlacesEvent.getAllPlaces()),
      expect: () => <PlacesState>[
        placesBloc.state.copyWith(
          placesOption: const None(),
          isLoading: true,
          places: [],
        ),
        placesBloc.state
            .copyWith(places: tPlaces, placesOption: Some(Right(tPlaces))),
      ],
      verify: (_) {
        verify(mockGetAllPlaces(const NoParams()));
      },
      // verify: (_) {},
    );
    setUpAuthFailureTest(const PlacesFailure.serverFailure());
    setUpAuthFailureTest(const PlacesFailure.clientFailure());
  });

  group('getAllPlaces', () {
    blocTest<PlacesBloc, PlacesState>(
      'should increment [favCount] in state when [markFavorite] event is called',
      build: () => placesBloc,
      seed: () => placesBloc.state.copyWith(
        placesOption: Some(Right(tPlaces)),
        isLoading: false,
        favCount: 0,
        places: tPlaces,
      ),
      act: (bloc) => bloc.add(const PlacesEvent.markFavorite(tId)),
      expect: () => <PlacesState>[
        placesBloc.state.copyWith(favCount: 1),
      ],
      // verify: (_) {},
    );
  });
}
