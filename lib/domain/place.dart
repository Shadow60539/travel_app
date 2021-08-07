// To parse this JSON data, do
//
//     final place = placeFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'place.freezed.dart';
part 'place.g.dart';

@freezed
class Place with _$Place {
  const factory Place({
    @JsonKey(name: "_id")
    required int id,
    required String description,
    required int duration,
    @JsonKey(name: "img_url")
    required String imgUrl,
    required String name,
    required int price,
    required int rating,
    required int reviews,
    required List<Tour> tours,
    @Default(false) bool isFav,
  }) = _Place;

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);
}

@freezed
class Tour with _$Tour {
  const factory Tour({
    required String date,
    required String desc,
    required int distance,
    required String img,
    required String name,
  }) = _Tour;

  factory Tour.fromJson(Map<String, dynamic> json) => _$TourFromJson(json);
}
