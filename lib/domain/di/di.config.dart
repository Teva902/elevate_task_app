// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../data/api_manager.dart' as _i236;
import '../../data/data_source/home_remote_data_source.dart' as _i324;
import '../../data/data_source/impl/home_remote_data_source_impl.dart' as _i14;
import '../../data/repository/home_repository_impl.dart' as _i1043;
import '../../presentation/cubit/products_screen_view_model.dart' as _i658;
import '../repository/home_repository.dart' as _i326;
import '../use_case/get_all_product_use_case.dart' as _i42;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i236.ApiManager>(() => _i236.ApiManager());
    gh.factory<_i324.HomeRemoteDataSource>(() =>
        _i14.HomeRemoteDataSourceImpl(apiManager: gh<_i236.ApiManager>()));
    gh.factory<_i326.HomeRepository>(() => _i1043.HomeRepositoryImpl(
        homeRemoteDataSource: gh<_i324.HomeRemoteDataSource>()));
    gh.factory<_i42.GetAllProductsUseCase>(() =>
        _i42.GetAllProductsUseCase(homeRepository: gh<_i326.HomeRepository>()));
    gh.factory<_i658.ProductScreenViewModel>(() => _i658.ProductScreenViewModel(
        getAllProductsUseCase: gh<_i42.GetAllProductsUseCase>()));
    return this;
  }
}
