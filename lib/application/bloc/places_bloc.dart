import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_app/domain/place.dart';
import 'package:travel_app/domain/i_places_repository.dart';
import 'package:travel_app/domain/places_failure.dart';

part 'places_event.dart';
part 'places_state.dart';
part 'places_bloc.freezed.dart';

@injectable
@prod
class PlacesBloc extends Bloc<PlacesEvent, PlacesState> {
  PlacesBloc(this.repository) : super(PlacesState.initial());

  final IPlacesRepository repository;

  @override
  Stream<PlacesState> mapEventToState(
    PlacesEvent event,
  ) async* {
    yield* event.map(
      getAllPlaces: (e) async* {
        yield state.copyWith(isLoading: true);
        final Either<PlacesFailure, List<Place>> placesOption =
            await repository.getAllPlaces();

        yield placesOption.fold(
          (l) => state.copyWith(
            isLoading: false,
            placesOption: Some(Left(l)),
          ),
          (r) => state.copyWith(
            isLoading: false,
            places: r,
            favCount: 0,
            placesOption: Some(Right(r)),
          ),
        );
      },
      markFavorite: (e) async* {
        final int index =
            state.places.indexWhere((element) => element.id == e.id);
        state.places[index] = state.places[index].copyWith(isFav: true);
        yield state.copyWith(favCount: state.favCount! + 1);
      },
    );
  }
}
