import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_app/core/models/place.dart';
import 'package:travel_app/domain/places_repository.dart';

part 'places_event.dart';
part 'places_state.dart';
part 'places_bloc.freezed.dart';

class PlacesBloc extends Bloc<PlacesEvent, PlacesState> {
  PlacesBloc() : super(PlacesState.initial());

  @override
  Stream<PlacesState> mapEventToState(
    PlacesEvent event,
  ) async* {
    yield* event.map(
      getAllPlaces: (e) async* {
        yield state.copyWith(isLoading: true);
        final List<Place> places = await PlacesRepositoryImpl().getAllPlaces();
        yield state.copyWith(isLoading: false, places: places, favCount: 0);
      },
      getFavCount: (e) async* {
        yield state.copyWith(
            favCount: state.places.where((e) => e.isFav).toList().length);
      },
    );
  }
}
