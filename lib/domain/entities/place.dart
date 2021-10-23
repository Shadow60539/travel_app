import 'package:equatable/equatable.dart';

import 'tour.dart';

class Place extends Equatable {
  final int id;
  final String description;
  final int duration;
  final String imgUrl;
  final String name;
  final int price;
  final int rating;
  final int reviews;
  final List<Tour> tours;
  final bool isFav;

  const Place({
    required this.id,
    required this.description,
    required this.duration,
    required this.imgUrl,
    required this.name,
    required this.price,
    required this.rating,
    required this.reviews,
    required this.tours,
    required this.isFav,
  });

  @override
  List<Object?> get props => [
        id,
        description,
        duration,
        imgUrl,
        name,
        price,
        rating,
        reviews,
        tours,
        isFav,
      ];

  Place copyWith({
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
      Place(
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
