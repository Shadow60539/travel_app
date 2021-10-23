// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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

  _MarkFavorite markFavorite(int id) {
    return _MarkFavorite(
      id,
    );
  }
}

/// @nodoc
const $PlacesEvent = _$PlacesEventTearOff();

/// @nodoc
mixin _$PlacesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllPlaces,
    required TResult Function(int id) markFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllPlaces,
    TResult Function(int id)? markFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllPlaces,
    TResult Function(int id)? markFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllPlacesEvent value) getAllPlaces,
    required TResult Function(_MarkFavorite value) markFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AllPlacesEvent value)? getAllPlaces,
    TResult Function(_MarkFavorite value)? markFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllPlacesEvent value)? getAllPlaces,
    TResult Function(_MarkFavorite value)? markFavorite,
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AllPlacesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllPlaces,
    required TResult Function(int id) markFavorite,
  }) {
    return getAllPlaces();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllPlaces,
    TResult Function(int id)? markFavorite,
  }) {
    return getAllPlaces?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllPlaces,
    TResult Function(int id)? markFavorite,
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
    required TResult Function(_MarkFavorite value) markFavorite,
  }) {
    return getAllPlaces(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AllPlacesEvent value)? getAllPlaces,
    TResult Function(_MarkFavorite value)? markFavorite,
  }) {
    return getAllPlaces?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllPlacesEvent value)? getAllPlaces,
    TResult Function(_MarkFavorite value)? markFavorite,
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
abstract class _$MarkFavoriteCopyWith<$Res> {
  factory _$MarkFavoriteCopyWith(
          _MarkFavorite value, $Res Function(_MarkFavorite) then) =
      __$MarkFavoriteCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$MarkFavoriteCopyWithImpl<$Res> extends _$PlacesEventCopyWithImpl<$Res>
    implements _$MarkFavoriteCopyWith<$Res> {
  __$MarkFavoriteCopyWithImpl(
      _MarkFavorite _value, $Res Function(_MarkFavorite) _then)
      : super(_value, (v) => _then(v as _MarkFavorite));

  @override
  _MarkFavorite get _value => super._value as _MarkFavorite;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_MarkFavorite(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_MarkFavorite implements _MarkFavorite {
  const _$_MarkFavorite(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'PlacesEvent.markFavorite(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MarkFavorite &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  _$MarkFavoriteCopyWith<_MarkFavorite> get copyWith =>
      __$MarkFavoriteCopyWithImpl<_MarkFavorite>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllPlaces,
    required TResult Function(int id) markFavorite,
  }) {
    return markFavorite(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllPlaces,
    TResult Function(int id)? markFavorite,
  }) {
    return markFavorite?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllPlaces,
    TResult Function(int id)? markFavorite,
    required TResult orElse(),
  }) {
    if (markFavorite != null) {
      return markFavorite(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllPlacesEvent value) getAllPlaces,
    required TResult Function(_MarkFavorite value) markFavorite,
  }) {
    return markFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AllPlacesEvent value)? getAllPlaces,
    TResult Function(_MarkFavorite value)? markFavorite,
  }) {
    return markFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllPlacesEvent value)? getAllPlaces,
    TResult Function(_MarkFavorite value)? markFavorite,
    required TResult orElse(),
  }) {
    if (markFavorite != null) {
      return markFavorite(this);
    }
    return orElse();
  }
}

abstract class _MarkFavorite implements PlacesEvent {
  const factory _MarkFavorite(int id) = _$_MarkFavorite;

  int get id;
  @JsonKey(ignore: true)
  _$MarkFavoriteCopyWith<_MarkFavorite> get copyWith =>
      throw _privateConstructorUsedError;
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
        (other.runtimeType == runtimeType &&
            other is _PlacesState &&
            const DeepCollectionEquality().equals(other.places, places) &&
            (identical(other.placesOption, placesOption) ||
                other.placesOption == placesOption) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.favCount, favCount) ||
                other.favCount == favCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(places),
      placesOption,
      isLoading,
      favCount);

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
  List<Place> get places;
  @override
  Option<Either<PlacesFailure, List<Place>>> get placesOption;
  @override
  bool? get isLoading;
  @override
  int? get favCount;
  @override
  @JsonKey(ignore: true)
  _$PlacesStateCopyWith<_PlacesState> get copyWith =>
      throw _privateConstructorUsedError;
}
