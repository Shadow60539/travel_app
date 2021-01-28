// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'places_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PlacesEventTearOff {
  const _$PlacesEventTearOff();

// ignore: unused_element
  AllPlacesEvent getAllPlaces() {
    return const AllPlacesEvent();
  }

// ignore: unused_element
  FavCountEvent getFavCount() {
    return const FavCountEvent();
  }
}

/// @nodoc
// ignore: unused_element
const $PlacesEvent = _$PlacesEventTearOff();

/// @nodoc
mixin _$PlacesEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllPlaces(),
    @required Result getFavCount(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllPlaces(),
    Result getFavCount(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllPlaces(AllPlacesEvent value),
    @required Result getFavCount(FavCountEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllPlaces(AllPlacesEvent value),
    Result getFavCount(FavCountEvent value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $PlacesEventCopyWith<$Res> {
  factory $PlacesEventCopyWith(
          PlacesEvent value, $Res Function(PlacesEvent) then) =
      _$PlacesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlacesEventCopyWithImpl<$Res> implements $PlacesEventCopyWith<$Res> {
  _$PlacesEventCopyWithImpl(this._value, this._then);

  final PlacesEvent _value;
  // ignore: unused_field
  final $Res Function(PlacesEvent) _then;
}

/// @nodoc
abstract class $AllPlacesEventCopyWith<$Res> {
  factory $AllPlacesEventCopyWith(
          AllPlacesEvent value, $Res Function(AllPlacesEvent) then) =
      _$AllPlacesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AllPlacesEventCopyWithImpl<$Res> extends _$PlacesEventCopyWithImpl<$Res>
    implements $AllPlacesEventCopyWith<$Res> {
  _$AllPlacesEventCopyWithImpl(
      AllPlacesEvent _value, $Res Function(AllPlacesEvent) _then)
      : super(_value, (v) => _then(v as AllPlacesEvent));

  @override
  AllPlacesEvent get _value => super._value as AllPlacesEvent;
}

/// @nodoc
class _$AllPlacesEvent implements AllPlacesEvent {
  const _$AllPlacesEvent();

  @override
  String toString() {
    return 'PlacesEvent.getAllPlaces()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AllPlacesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllPlaces(),
    @required Result getFavCount(),
  }) {
    assert(getAllPlaces != null);
    assert(getFavCount != null);
    return getAllPlaces();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllPlaces(),
    Result getFavCount(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllPlaces != null) {
      return getAllPlaces();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllPlaces(AllPlacesEvent value),
    @required Result getFavCount(FavCountEvent value),
  }) {
    assert(getAllPlaces != null);
    assert(getFavCount != null);
    return getAllPlaces(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllPlaces(AllPlacesEvent value),
    Result getFavCount(FavCountEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllPlaces != null) {
      return getAllPlaces(this);
    }
    return orElse();
  }
}

abstract class AllPlacesEvent implements PlacesEvent {
  const factory AllPlacesEvent() = _$AllPlacesEvent;
}

/// @nodoc
abstract class $FavCountEventCopyWith<$Res> {
  factory $FavCountEventCopyWith(
          FavCountEvent value, $Res Function(FavCountEvent) then) =
      _$FavCountEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavCountEventCopyWithImpl<$Res> extends _$PlacesEventCopyWithImpl<$Res>
    implements $FavCountEventCopyWith<$Res> {
  _$FavCountEventCopyWithImpl(
      FavCountEvent _value, $Res Function(FavCountEvent) _then)
      : super(_value, (v) => _then(v as FavCountEvent));

  @override
  FavCountEvent get _value => super._value as FavCountEvent;
}

/// @nodoc
class _$FavCountEvent implements FavCountEvent {
  const _$FavCountEvent();

  @override
  String toString() {
    return 'PlacesEvent.getFavCount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FavCountEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllPlaces(),
    @required Result getFavCount(),
  }) {
    assert(getAllPlaces != null);
    assert(getFavCount != null);
    return getFavCount();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllPlaces(),
    Result getFavCount(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getFavCount != null) {
      return getFavCount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllPlaces(AllPlacesEvent value),
    @required Result getFavCount(FavCountEvent value),
  }) {
    assert(getAllPlaces != null);
    assert(getFavCount != null);
    return getFavCount(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllPlaces(AllPlacesEvent value),
    Result getFavCount(FavCountEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getFavCount != null) {
      return getFavCount(this);
    }
    return orElse();
  }
}

abstract class FavCountEvent implements PlacesEvent {
  const factory FavCountEvent() = _$FavCountEvent;
}

/// @nodoc
class _$PlacesStateTearOff {
  const _$PlacesStateTearOff();

// ignore: unused_element
  _PlacesState call(
      {@required List<Place> places, bool isLoading, int favCount}) {
    return _PlacesState(
      places: places,
      isLoading: isLoading,
      favCount: favCount,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PlacesState = _$PlacesStateTearOff();

/// @nodoc
mixin _$PlacesState {
  List<Place> get places;
  bool get isLoading;
  int get favCount;

  $PlacesStateCopyWith<PlacesState> get copyWith;
}

/// @nodoc
abstract class $PlacesStateCopyWith<$Res> {
  factory $PlacesStateCopyWith(
          PlacesState value, $Res Function(PlacesState) then) =
      _$PlacesStateCopyWithImpl<$Res>;
  $Res call({List<Place> places, bool isLoading, int favCount});
}

/// @nodoc
class _$PlacesStateCopyWithImpl<$Res> implements $PlacesStateCopyWith<$Res> {
  _$PlacesStateCopyWithImpl(this._value, this._then);

  final PlacesState _value;
  // ignore: unused_field
  final $Res Function(PlacesState) _then;

  @override
  $Res call({
    Object places = freezed,
    Object isLoading = freezed,
    Object favCount = freezed,
  }) {
    return _then(_value.copyWith(
      places: places == freezed ? _value.places : places as List<Place>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      favCount: favCount == freezed ? _value.favCount : favCount as int,
    ));
  }
}

/// @nodoc
abstract class _$PlacesStateCopyWith<$Res>
    implements $PlacesStateCopyWith<$Res> {
  factory _$PlacesStateCopyWith(
          _PlacesState value, $Res Function(_PlacesState) then) =
      __$PlacesStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Place> places, bool isLoading, int favCount});
}

/// @nodoc
class __$PlacesStateCopyWithImpl<$Res> extends _$PlacesStateCopyWithImpl<$Res>
    implements _$PlacesStateCopyWith<$Res> {
  __$PlacesStateCopyWithImpl(
      _PlacesState _value, $Res Function(_PlacesState) _then)
      : super(_value, (v) => _then(v as _PlacesState));

  @override
  _PlacesState get _value => super._value as _PlacesState;

  @override
  $Res call({
    Object places = freezed,
    Object isLoading = freezed,
    Object favCount = freezed,
  }) {
    return _then(_PlacesState(
      places: places == freezed ? _value.places : places as List<Place>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      favCount: favCount == freezed ? _value.favCount : favCount as int,
    ));
  }
}

/// @nodoc
class _$_PlacesState implements _PlacesState {
  const _$_PlacesState({@required this.places, this.isLoading, this.favCount})
      : assert(places != null);

  @override
  final List<Place> places;
  @override
  final bool isLoading;
  @override
  final int favCount;

  @override
  String toString() {
    return 'PlacesState(places: $places, isLoading: $isLoading, favCount: $favCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlacesState &&
            (identical(other.places, places) ||
                const DeepCollectionEquality().equals(other.places, places)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.favCount, favCount) ||
                const DeepCollectionEquality()
                    .equals(other.favCount, favCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(places) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(favCount);

  @override
  _$PlacesStateCopyWith<_PlacesState> get copyWith =>
      __$PlacesStateCopyWithImpl<_PlacesState>(this, _$identity);
}

abstract class _PlacesState implements PlacesState {
  const factory _PlacesState(
      {@required List<Place> places,
      bool isLoading,
      int favCount}) = _$_PlacesState;

  @override
  List<Place> get places;
  @override
  bool get isLoading;
  @override
  int get favCount;
  @override
  _$PlacesStateCopyWith<_PlacesState> get copyWith;
}
