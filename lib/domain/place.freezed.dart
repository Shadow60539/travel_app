// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Place _$PlaceFromJson(Map<String, dynamic> json) {
  return _Place.fromJson(json);
}

/// @nodoc
class _$PlaceTearOff {
  const _$PlaceTearOff();

  _Place call(
      {@JsonKey(name: "_id") required int id,
      required String description,
      required int duration,
      @JsonKey(name: "img_url") required String imgUrl,
      required String name,
      required int price,
      required int rating,
      required int reviews,
      required List<Tour> tours,
      bool isFav = false}) {
    return _Place(
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
  }

  Place fromJson(Map<String, Object> json) {
    return Place.fromJson(json);
  }
}

/// @nodoc
const $Place = _$PlaceTearOff();

/// @nodoc
mixin _$Place {
  @JsonKey(name: "_id")
  int get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  @JsonKey(name: "img_url")
  String get imgUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  int get reviews => throw _privateConstructorUsedError;
  List<Tour> get tours => throw _privateConstructorUsedError;
  bool get isFav => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceCopyWith<Place> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceCopyWith<$Res> {
  factory $PlaceCopyWith(Place value, $Res Function(Place) then) =
      _$PlaceCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "_id") int id,
      String description,
      int duration,
      @JsonKey(name: "img_url") String imgUrl,
      String name,
      int price,
      int rating,
      int reviews,
      List<Tour> tours,
      bool isFav});
}

/// @nodoc
class _$PlaceCopyWithImpl<$Res> implements $PlaceCopyWith<$Res> {
  _$PlaceCopyWithImpl(this._value, this._then);

  final Place _value;
  // ignore: unused_field
  final $Res Function(Place) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? duration = freezed,
    Object? imgUrl = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? rating = freezed,
    Object? reviews = freezed,
    Object? tours = freezed,
    Object? isFav = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      imgUrl: imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      reviews: reviews == freezed
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as int,
      tours: tours == freezed
          ? _value.tours
          : tours // ignore: cast_nullable_to_non_nullable
              as List<Tour>,
      isFav: isFav == freezed
          ? _value.isFav
          : isFav // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$PlaceCopyWith<$Res> implements $PlaceCopyWith<$Res> {
  factory _$PlaceCopyWith(_Place value, $Res Function(_Place) then) =
      __$PlaceCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "_id") int id,
      String description,
      int duration,
      @JsonKey(name: "img_url") String imgUrl,
      String name,
      int price,
      int rating,
      int reviews,
      List<Tour> tours,
      bool isFav});
}

/// @nodoc
class __$PlaceCopyWithImpl<$Res> extends _$PlaceCopyWithImpl<$Res>
    implements _$PlaceCopyWith<$Res> {
  __$PlaceCopyWithImpl(_Place _value, $Res Function(_Place) _then)
      : super(_value, (v) => _then(v as _Place));

  @override
  _Place get _value => super._value as _Place;

  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? duration = freezed,
    Object? imgUrl = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? rating = freezed,
    Object? reviews = freezed,
    Object? tours = freezed,
    Object? isFav = freezed,
  }) {
    return _then(_Place(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      imgUrl: imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      reviews: reviews == freezed
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as int,
      tours: tours == freezed
          ? _value.tours
          : tours // ignore: cast_nullable_to_non_nullable
              as List<Tour>,
      isFav: isFav == freezed
          ? _value.isFav
          : isFav // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Place implements _Place {
  const _$_Place(
      {@JsonKey(name: "_id") required this.id,
      required this.description,
      required this.duration,
      @JsonKey(name: "img_url") required this.imgUrl,
      required this.name,
      required this.price,
      required this.rating,
      required this.reviews,
      required this.tours,
      this.isFav = false});

  factory _$_Place.fromJson(Map<String, dynamic> json) =>
      _$_$_PlaceFromJson(json);

  @override
  @JsonKey(name: "_id")
  final int id;
  @override
  final String description;
  @override
  final int duration;
  @override
  @JsonKey(name: "img_url")
  final String imgUrl;
  @override
  final String name;
  @override
  final int price;
  @override
  final int rating;
  @override
  final int reviews;
  @override
  final List<Tour> tours;
  @JsonKey(defaultValue: false)
  @override
  final bool isFav;

  @override
  String toString() {
    return 'Place(id: $id, description: $description, duration: $duration, imgUrl: $imgUrl, name: $name, price: $price, rating: $rating, reviews: $reviews, tours: $tours, isFav: $isFav)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Place &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.imgUrl, imgUrl) ||
                const DeepCollectionEquality().equals(other.imgUrl, imgUrl)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.reviews, reviews) ||
                const DeepCollectionEquality()
                    .equals(other.reviews, reviews)) &&
            (identical(other.tours, tours) ||
                const DeepCollectionEquality().equals(other.tours, tours)) &&
            (identical(other.isFav, isFav) ||
                const DeepCollectionEquality().equals(other.isFav, isFav)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(imgUrl) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(reviews) ^
      const DeepCollectionEquality().hash(tours) ^
      const DeepCollectionEquality().hash(isFav);

  @JsonKey(ignore: true)
  @override
  _$PlaceCopyWith<_Place> get copyWith =>
      __$PlaceCopyWithImpl<_Place>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PlaceToJson(this);
  }
}

abstract class _Place implements Place {
  const factory _Place(
      {@JsonKey(name: "_id") required int id,
      required String description,
      required int duration,
      @JsonKey(name: "img_url") required String imgUrl,
      required String name,
      required int price,
      required int rating,
      required int reviews,
      required List<Tour> tours,
      bool isFav}) = _$_Place;

  factory _Place.fromJson(Map<String, dynamic> json) = _$_Place.fromJson;

  @override
  @JsonKey(name: "_id")
  int get id => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  int get duration => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "img_url")
  String get imgUrl => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get price => throw _privateConstructorUsedError;
  @override
  int get rating => throw _privateConstructorUsedError;
  @override
  int get reviews => throw _privateConstructorUsedError;
  @override
  List<Tour> get tours => throw _privateConstructorUsedError;
  @override
  bool get isFav => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlaceCopyWith<_Place> get copyWith => throw _privateConstructorUsedError;
}

Tour _$TourFromJson(Map<String, dynamic> json) {
  return _Tour.fromJson(json);
}

/// @nodoc
class _$TourTearOff {
  const _$TourTearOff();

  _Tour call(
      {required String date,
      required String desc,
      required int distance,
      required String img,
      required String name}) {
    return _Tour(
      date: date,
      desc: desc,
      distance: distance,
      img: img,
      name: name,
    );
  }

  Tour fromJson(Map<String, Object> json) {
    return Tour.fromJson(json);
  }
}

/// @nodoc
const $Tour = _$TourTearOff();

/// @nodoc
mixin _$Tour {
  String get date => throw _privateConstructorUsedError;
  String get desc => throw _privateConstructorUsedError;
  int get distance => throw _privateConstructorUsedError;
  String get img => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TourCopyWith<Tour> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourCopyWith<$Res> {
  factory $TourCopyWith(Tour value, $Res Function(Tour) then) =
      _$TourCopyWithImpl<$Res>;
  $Res call({String date, String desc, int distance, String img, String name});
}

/// @nodoc
class _$TourCopyWithImpl<$Res> implements $TourCopyWith<$Res> {
  _$TourCopyWithImpl(this._value, this._then);

  final Tour _value;
  // ignore: unused_field
  final $Res Function(Tour) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? desc = freezed,
    Object? distance = freezed,
    Object? img = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TourCopyWith<$Res> implements $TourCopyWith<$Res> {
  factory _$TourCopyWith(_Tour value, $Res Function(_Tour) then) =
      __$TourCopyWithImpl<$Res>;
  @override
  $Res call({String date, String desc, int distance, String img, String name});
}

/// @nodoc
class __$TourCopyWithImpl<$Res> extends _$TourCopyWithImpl<$Res>
    implements _$TourCopyWith<$Res> {
  __$TourCopyWithImpl(_Tour _value, $Res Function(_Tour) _then)
      : super(_value, (v) => _then(v as _Tour));

  @override
  _Tour get _value => super._value as _Tour;

  @override
  $Res call({
    Object? date = freezed,
    Object? desc = freezed,
    Object? distance = freezed,
    Object? img = freezed,
    Object? name = freezed,
  }) {
    return _then(_Tour(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tour implements _Tour {
  const _$_Tour(
      {required this.date,
      required this.desc,
      required this.distance,
      required this.img,
      required this.name});

  factory _$_Tour.fromJson(Map<String, dynamic> json) =>
      _$_$_TourFromJson(json);

  @override
  final String date;
  @override
  final String desc;
  @override
  final int distance;
  @override
  final String img;
  @override
  final String name;

  @override
  String toString() {
    return 'Tour(date: $date, desc: $desc, distance: $distance, img: $img, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Tour &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)) &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)) &&
            (identical(other.img, img) ||
                const DeepCollectionEquality().equals(other.img, img)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(desc) ^
      const DeepCollectionEquality().hash(distance) ^
      const DeepCollectionEquality().hash(img) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$TourCopyWith<_Tour> get copyWith =>
      __$TourCopyWithImpl<_Tour>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TourToJson(this);
  }
}

abstract class _Tour implements Tour {
  const factory _Tour(
      {required String date,
      required String desc,
      required int distance,
      required String img,
      required String name}) = _$_Tour;

  factory _Tour.fromJson(Map<String, dynamic> json) = _$_Tour.fromJson;

  @override
  String get date => throw _privateConstructorUsedError;
  @override
  String get desc => throw _privateConstructorUsedError;
  @override
  int get distance => throw _privateConstructorUsedError;
  @override
  String get img => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TourCopyWith<_Tour> get copyWith => throw _privateConstructorUsedError;
}
