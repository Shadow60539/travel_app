// To parse this JSON data, do
//
//     final place = placeFromJson(jsonString);

import 'dart:convert';

List<Place> placeFromJson(String str) => List<Place>.from(
    (json.decode(str) as List).map((x) => Place.fromJson(Map<String, dynamic>.from(x as Map<dynamic, dynamic>))));

String placeToJson(List<Place> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Place {
  Place(
      {this.description,
      this.duration,
      this.imgUrl,
      this.name,
      this.price,
      this.rating,
      this.reviews,
      this.tours,
      this.isFav});

  int id;
  String description;
  int duration;
  String imgUrl;
  String name;
  int price;
  int rating;
  int reviews;
  List<Tour> tours;
  bool isFav;

  factory Place.fromJson(Map<String, dynamic> json) => Place(
        description: json["description"] as String,
        duration: json["duration"] as int,
        imgUrl: json["img_url"] as String,
        name: json["name"] as String,
        price: json["price"] as int,
        rating: json["rating"] as int,
        reviews: json["reviews"] as int,
        isFav: false,
        tours: List<Tour>.from(
          (json["tours"] as List).map(
            (x) => Tour.fromJson(
              Map<String, dynamic>.from(x as Map<dynamic, dynamic>),
            ),
          ),
        ),
      );

  Map<String, dynamic> toJson() => {
        "description": description,
        "duration": duration,
        "img_url": imgUrl,
        "name": name,
        "price": price,
        "rating": rating,
        "reviews": reviews,
        "tours": List<dynamic>.from(tours.map((x) => x.toJson())),
      };
}

class Tour {
  Tour({
    this.date,
    this.desc,
    this.distance,
    this.img,
    this.name,
    this.distane,
  });

  String date;
  String desc;
  int distance;
  String img;
  String name;
  int distane;

  factory Tour.fromJson(Map<String, dynamic> json) => Tour(
        date: json['date'] as String,
        desc: json["desc"] as String,
        distance: json["distance"] as int,
        img: json["img"] as String,
        name: json["name"] as String,
      );

  Map<String, dynamic> toJson() => {
        "desc": desc,
        "distance": distance,
        "img": img,
        "name": name,
      };
}
