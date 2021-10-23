import 'package:travel_app/domain/entities/tour.dart';

class TourModel extends Tour {
  const TourModel({
    required String date,
    required String desc,
    required int distance,
    required String img,
    required String name,
  }) : super(
          date: date,
          desc: desc,
          distance: distance,
          img: img,
          name: name,
        );

  factory TourModel.fromJson(Map<String, dynamic> json) => TourModel(
        date: json['date'] as String,
        desc: json["desc"] as String,
        distance: json["distance"] as int,
        img: json["img"] as String,
        name: json["name"] as String,
      );
}
