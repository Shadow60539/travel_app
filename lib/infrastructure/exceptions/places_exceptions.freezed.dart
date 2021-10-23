// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'places_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlacesExceptionTearOff {
  const _$PlacesExceptionTearOff();

  ServerException serverException() {
    return const ServerException();
  }

  ClientException clientException() {
    return const ClientException();
  }
}

/// @nodoc
const $PlacesException = _$PlacesExceptionTearOff();

/// @nodoc
mixin _$PlacesException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverException,
    required TResult Function() clientException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverException,
    TResult Function()? clientException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverException,
    TResult Function()? clientException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerException value) serverException,
    required TResult Function(ClientException value) clientException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerException value)? serverException,
    TResult Function(ClientException value)? clientException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerException value)? serverException,
    TResult Function(ClientException value)? clientException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacesExceptionCopyWith<$Res> {
  factory $PlacesExceptionCopyWith(
          PlacesException value, $Res Function(PlacesException) then) =
      _$PlacesExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlacesExceptionCopyWithImpl<$Res>
    implements $PlacesExceptionCopyWith<$Res> {
  _$PlacesExceptionCopyWithImpl(this._value, this._then);

  final PlacesException _value;
  // ignore: unused_field
  final $Res Function(PlacesException) _then;
}

/// @nodoc
abstract class $ServerExceptionCopyWith<$Res> {
  factory $ServerExceptionCopyWith(
          ServerException value, $Res Function(ServerException) then) =
      _$ServerExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerExceptionCopyWithImpl<$Res>
    extends _$PlacesExceptionCopyWithImpl<$Res>
    implements $ServerExceptionCopyWith<$Res> {
  _$ServerExceptionCopyWithImpl(
      ServerException _value, $Res Function(ServerException) _then)
      : super(_value, (v) => _then(v as ServerException));

  @override
  ServerException get _value => super._value as ServerException;
}

/// @nodoc

class _$ServerException implements ServerException {
  const _$ServerException();

  @override
  String toString() {
    return 'PlacesException.serverException()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ServerException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverException,
    required TResult Function() clientException,
  }) {
    return serverException();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverException,
    TResult Function()? clientException,
  }) {
    return serverException?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverException,
    TResult Function()? clientException,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerException value) serverException,
    required TResult Function(ClientException value) clientException,
  }) {
    return serverException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerException value)? serverException,
    TResult Function(ClientException value)? clientException,
  }) {
    return serverException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerException value)? serverException,
    TResult Function(ClientException value)? clientException,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException(this);
    }
    return orElse();
  }
}

abstract class ServerException implements PlacesException {
  const factory ServerException() = _$ServerException;
}

/// @nodoc
abstract class $ClientExceptionCopyWith<$Res> {
  factory $ClientExceptionCopyWith(
          ClientException value, $Res Function(ClientException) then) =
      _$ClientExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClientExceptionCopyWithImpl<$Res>
    extends _$PlacesExceptionCopyWithImpl<$Res>
    implements $ClientExceptionCopyWith<$Res> {
  _$ClientExceptionCopyWithImpl(
      ClientException _value, $Res Function(ClientException) _then)
      : super(_value, (v) => _then(v as ClientException));

  @override
  ClientException get _value => super._value as ClientException;
}

/// @nodoc

class _$ClientException implements ClientException {
  const _$ClientException();

  @override
  String toString() {
    return 'PlacesException.clientException()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ClientException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverException,
    required TResult Function() clientException,
  }) {
    return clientException();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverException,
    TResult Function()? clientException,
  }) {
    return clientException?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverException,
    TResult Function()? clientException,
    required TResult orElse(),
  }) {
    if (clientException != null) {
      return clientException();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerException value) serverException,
    required TResult Function(ClientException value) clientException,
  }) {
    return clientException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerException value)? serverException,
    TResult Function(ClientException value)? clientException,
  }) {
    return clientException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerException value)? serverException,
    TResult Function(ClientException value)? clientException,
    required TResult orElse(),
  }) {
    if (clientException != null) {
      return clientException(this);
    }
    return orElse();
  }
}

abstract class ClientException implements PlacesException {
  const factory ClientException() = _$ClientException;
}
