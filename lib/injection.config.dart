// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/bloc/places_bloc.dart' as _i5;
import 'domain/i_places_repository.dart' as _i3;
import 'infrastructure/places_repo.dart' as _i4;

const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.IPlacesRepository>(() => _i4.PlacesRepo(),
      registerFor: {_prod});
  gh.factory<_i5.PlacesBloc>(() => _i5.PlacesBloc(get<_i3.IPlacesRepository>()),
      registerFor: {_prod});
  return get;
}
