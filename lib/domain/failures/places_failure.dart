import 'package:freezed_annotation/freezed_annotation.dart';
part 'places_failure.freezed.dart';

@freezed
class PlacesFailure with _$PlacesFailure {
  const factory PlacesFailure.serverFailure() = _ServerFailure;
  const factory PlacesFailure.clientFailure() = _ClientFailure;
}
