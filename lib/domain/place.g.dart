// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Place _$_$_PlaceFromJson(Map<String, dynamic> json) {
  return _$_Place(
    id: json['_id'] as int,
    description: json['description'] as String,
    duration: json['duration'] as int,
    imgUrl: json['img_url'] as String,
    name: json['name'] as String,
    price: json['price'] as int,
    rating: json['rating'] as int,
    reviews: json['reviews'] as int,
    tours: (json['tours'] as List<dynamic>)
        .map((e) => Tour.fromJson(e as Map<String, dynamic>))
        .toList(),
    isFav: json['isFav'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$_PlaceToJson(_$_Place instance) => <String, dynamic>{
      '_id': instance.id,
      'description': instance.description,
      'duration': instance.duration,
      'img_url': instance.imgUrl,
      'name': instance.name,
      'price': instance.price,
      'rating': instance.rating,
      'reviews': instance.reviews,
      'tours': instance.tours,
      'isFav': instance.isFav,
    };

_$_Tour _$_$_TourFromJson(Map<String, dynamic> json) {
  return _$_Tour(
    date: json['date'] as String,
    desc: json['desc'] as String,
    distance: json['distance'] as int,
    img: json['img'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$_$_TourToJson(_$_Tour instance) => <String, dynamic>{
      'date': instance.date,
      'desc': instance.desc,
      'distance': instance.distance,
      'img': instance.img,
      'name': instance.name,
    };
