import 'package:travel_app/domain/entities/place.dart';
import 'package:travel_app/domain/entities/tour.dart';
import 'package:travel_app/infrastructure/models/tour_model.dart';

class PlaceModel extends Place {
  const PlaceModel({
    required int id,
    required String description,
    required int duration,
    required String imgUrl,
    required String name,
    required int price,
    required int rating,
    required int reviews,
    required List<Tour> tours,
    bool isFav = false,
  }) : super(
          id: id,
          description: description,
          duration: duration,
          imgUrl: imgUrl,
          name: name,
          price: price,
          rating: rating,
          reviews: reviews,
          tours: tours,
          isFav: isFav,
        );

  factory PlaceModel.fromJson(Map<String, dynamic> json) => PlaceModel(
        id: json["_id"] as int,
        description: json["description"] as String,
        duration: json["duration"] as int,
        imgUrl: json["img_url"] as String,
        name: json["name"] as String,
        price: json["price"] as int,
        rating: json["rating"] as int,
        reviews: json["reviews"] as int,
        tours: List<Tour>.from(
          (json["tours"] as List).map(
            (x) => TourModel.fromJson(
              x as Map<String, dynamic>,
            ),
          ),
        ),
      );

  @override
  PlaceModel copyWith({
    int? id,
    String? description,
    int? duration,
    String? imgUrl,
    String? name,
    int? price,
    int? rating,
    int? reviews,
    List<Tour>? tours,
    bool? isFav,
  }) =>
      PlaceModel(
        id: id ?? this.id,
        description: description ?? this.description,
        duration: duration ?? this.duration,
        imgUrl: imgUrl ?? this.imgUrl,
        name: name ?? this.name,
        price: price ?? this.price,
        rating: rating ?? this.rating,
        reviews: reviews ?? this.rating,
        tours: tours ?? this.tours,
        isFav: isFav ?? this.isFav,
      );
}
