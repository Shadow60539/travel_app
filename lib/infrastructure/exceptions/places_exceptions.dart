import 'package:freezed_annotation/freezed_annotation.dart';
part 'places_exceptions.freezed.dart';

@freezed
class PlacesException with _$PlacesException {
  const factory PlacesException.serverException() = ServerException;
  const factory PlacesException.clientException() = ClientException;
}
