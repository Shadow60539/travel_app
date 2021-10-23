import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:travel_app/core/usecase.dart';
import 'package:travel_app/domain/entities/place.dart';
import 'package:travel_app/domain/failures/places_failure.dart';
import 'package:travel_app/domain/usecases/get_all_places.dart';

part 'places_bloc.freezed.dart';
part 'places_event.dart';
part 'places_state.dart';

@injectable
@prod
class PlacesBloc extends Bloc<PlacesEvent, PlacesState> {
  PlacesBloc(this.getAllPlacesUseCase) : super(PlacesState.initial());

  final GetAllPlaces getAllPlacesUseCase;

  @override
  Stream<PlacesState> mapEventToState(
    PlacesEvent event,
  ) async* {
    yield* event.map(
      getAllPlaces: (e) async* {
        yield state.copyWith(isLoading: true);
        final Either<PlacesFailure, List<Place>> placesOption =
            await getAllPlacesUseCase(const NoParams());

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
