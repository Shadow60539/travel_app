// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'places_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlacesEventTearOff {
  const _$PlacesEventTearOff();

  AllPlacesEvent getAllPlaces() {
    return const AllPlacesEvent();
  }

  FavCountEvent getFavCount() {
    return const FavCountEvent();
  }
}

/// @nodoc
const $PlacesEvent = _$PlacesEventTearOff();

/// @nodoc
mixin _$PlacesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllPlaces,
    required TResult Function() getFavCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllPlaces,
    TResult Function()? getFavCount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllPlacesEvent value) getAllPlaces,
    required TResult Function(FavCountEvent value) getFavCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllPlacesEvent value)? getAllPlaces,
    TResult Function(FavCountEvent value)? getFavCount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function() getAllPlaces,
    required TResult Function() getFavCount,
  }) {
    return getAllPlaces();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllPlaces,
    TResult Function()? getFavCount,
    required TResult orElse(),
  }) {
    if (getAllPlaces != null) {
      return getAllPlaces();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllPlacesEvent value) getAllPlaces,
    required TResult Function(FavCountEvent value) getFavCount,
  }) {
    return getAllPlaces(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllPlacesEvent value)? getAllPlaces,
    TResult Function(FavCountEvent value)? getFavCount,
    required TResult orElse(),
  }) {
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
  TResult when<TResult extends Object?>({
    required TResult Function() getAllPlaces,
    required TResult Function() getFavCount,
  }) {
    return getFavCount();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllPlaces,
    TResult Function()? getFavCount,
    required TResult orElse(),
  }) {
    if (getFavCount != null) {
      return getFavCount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllPlacesEvent value) getAllPlaces,
    required TResult Function(FavCountEvent value) getFavCount,
  }) {
    return getFavCount(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllPlacesEvent value)? getAllPlaces,
    TResult Function(FavCountEvent value)? getFavCount,
    required TResult orElse(),
  }) {
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

  _PlacesState call(
      {required List<Place> places,
      required Option<Either<PlacesFailure, List<Place>>> placesOption,
      bool? isLoading,
      int? favCount}) {
    return _PlacesState(
      places: places,
      placesOption: placesOption,
      isLoading: isLoading,
      favCount: favCount,
    );
  }
}

/// @nodoc
const $PlacesState = _$PlacesStateTearOff();

/// @nodoc
mixin _$PlacesState {
  List<Place> get places => throw _privateConstructorUsedError;
  Option<Either<PlacesFailure, List<Place>>> get placesOption =>
      throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  int? get favCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlacesStateCopyWith<PlacesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacesStateCopyWith<$Res> {
  factory $PlacesStateCopyWith(
          PlacesState value, $Res Function(PlacesState) then) =
      _$PlacesStateCopyWithImpl<$Res>;
  $Res call(
      {List<Place> places,
      Option<Either<PlacesFailure, List<Place>>> placesOption,
      bool? isLoading,
      int? favCount});
}

/// @nodoc
class _$PlacesStateCopyWithImpl<$Res> implements $PlacesStateCopyWith<$Res> {
  _$PlacesStateCopyWithImpl(this._value, this._then);

  final PlacesState _value;
  // ignore: unused_field
  final $Res Function(PlacesState) _then;

  @override
  $Res call({
    Object? places = freezed,
    Object? placesOption = freezed,
    Object? isLoading = freezed,
    Object? favCount = freezed,
  }) {
    return _then(_value.copyWith(
      places: places == freezed
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>,
      placesOption: placesOption == freezed
          ? _value.placesOption
          : placesOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PlacesFailure, List<Place>>>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      favCount: favCount == freezed
          ? _value.favCount
          : favCount // ignore: cast_nullable_to_non_nullable
              as int?,
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
  $Res call(
      {List<Place> places,
      Option<Either<PlacesFailure, List<Place>>> placesOption,
      bool? isLoading,
      int? favCount});
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
    Object? places = freezed,
    Object? placesOption = freezed,
    Object? isLoading = freezed,
    Object? favCount = freezed,
  }) {
    return _then(_PlacesState(
      places: places == freezed
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>,
      placesOption: placesOption == freezed
          ? _value.placesOption
          : placesOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PlacesFailure, List<Place>>>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      favCount: favCount == freezed
          ? _value.favCount
          : favCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_PlacesState implements _PlacesState {
  const _$_PlacesState(
      {required this.places,
      required this.placesOption,
      this.isLoading,
      this.favCount});

  @override
  final List<Place> places;
  @override
  final Option<Either<PlacesFailure, List<Place>>> placesOption;
  @override
  final bool? isLoading;
  @override
  final int? favCount;

  @override
  String toString() {
    return 'PlacesState(places: $places, placesOption: $placesOption, isLoading: $isLoading, favCount: $favCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlacesState &&
            (identical(other.places, places) ||
                const DeepCollectionEquality().equals(other.places, places)) &&
            (identical(other.placesOption, placesOption) ||
                const DeepCollectionEquality()
                    .equals(other.placesOption, placesOption)) &&
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
      const DeepCollectionEquality().hash(placesOption) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(favCount);

  @JsonKey(ignore: true)
  @override
  _$PlacesStateCopyWith<_PlacesState> get copyWith =>
      __$PlacesStateCopyWithImpl<_PlacesState>(this, _$identity);
}

abstract class _PlacesState implements PlacesState {
  const factory _PlacesState(
      {required List<Place> places,
      required Option<Either<PlacesFailure, List<Place>>> placesOption,
      bool? isLoading,
      int? favCount}) = _$_PlacesState;

  @override
  List<Place> get places => throw _privateConstructorUsedError;
  @override
  Option<Either<PlacesFailure, List<Place>>> get placesOption =>
      throw _privateConstructorUsedError;
  @override
  bool? get isLoading => throw _privateConstructorUsedError;
  @override
  int? get favCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlacesStateCopyWith<_PlacesState> get copyWith =>
      throw _privateConstructorUsedError;
}
