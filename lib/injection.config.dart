// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/bloc/places_bloc.dart' as _i8;
import 'domain/repositories/i_places_repository.dart' as _i5;
import 'domain/usecases/get_all_places.dart' as _i7;
import 'infrastructure/data/place_remote_data_source.dart' as _i4;
import 'infrastructure/injection_module.dart' as _i9;
import 'infrastructure/repositories/places_repo.dart' as _i6;

const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.lazySingleton<_i3.Dio>(() => injectableModule.dio);
  gh.factory<_i4.IPlaceRemoteDataSource>(
      () => _i4.PlaceRemoteDataSource(get<_i3.Dio>()),
      registerFor: {_prod});
  gh.factory<_i5.IPlacesRepository>(
      () => _i6.PlacesRepo(get<_i4.IPlaceRemoteDataSource>()),
      registerFor: {_prod});
  gh.factory<_i7.GetAllPlaces>(
      () => _i7.GetAllPlaces(get<_i5.IPlacesRepository>()),
      registerFor: {_prod});
  gh.factory<_i8.PlacesBloc>(() => _i8.PlacesBloc(get<_i7.GetAllPlaces>()),
      registerFor: {_prod});
  return get;
}

class _$InjectableModule extends _i9.InjectableModule {}
