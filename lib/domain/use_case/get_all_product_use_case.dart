import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';

import '../entity/ProductResponseEntity.dart';
import '../failuer.dart';
import '../repository/home_repository.dart';

@injectable
class GetAllProductsUseCase {
  HomeRepository homeRepository;

  GetAllProductsUseCase({required this.homeRepository});

  Future<Either<Failures, ProductResponseEntity>> invoke() {
    return homeRepository.getAllProducts();
  }
}
