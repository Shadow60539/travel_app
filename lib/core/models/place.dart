// To parse this JSON data, do
//
//     final place = placeFromJson(jsonString);

import 'dart:convert';

List<Place> placeFromJson(String str) =>
    List<Place>.from(json.decode(str).map((x) => Place.fromJson(x)));

String placeToJson(List<Place> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

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
        description: json["description"],
        duration: json["duration"],
        imgUrl: json["img_url"],
        name: json["name"],
        price: json["price"],
        rating: json["rating"],
        reviews: json["reviews"],
        isFav: false,
        tours: List<Tour>.from(json["tours"].map((x) => Tour.fromJson(x))),
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
        date: json['date'],
        desc: json["desc"],
        distance: json["distance"],
        img: json["img"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "desc": desc,
        "distance": distance,
        "img": img,
        "name": name,
      };
}
