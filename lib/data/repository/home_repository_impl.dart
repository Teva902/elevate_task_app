import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';

import '../../domain/entity/ProductResponseEntity.dart';
import '../../domain/failuer.dart';
import '../../domain/repository/home_repository.dart';
import '../data_source/home_remote_data_source.dart';

@Injectable(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  HomeRemoteDataSource homeRemoteDataSource;

  HomeRepositoryImpl({required this.homeRemoteDataSource});

  @override
  Future<Either<Failures, ProductResponseEntity>> getAllProducts() async {
    var either = await homeRemoteDataSource.getAllProducts();
    return either.fold((error) => Left(error), (response) => Right(response));
  }
}
