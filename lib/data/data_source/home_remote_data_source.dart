import 'package:dartz/dartz.dart';

import '../../domain/entity/ProductResponseEntity.dart';
import '../../domain/failuer.dart';

abstract class HomeRemoteDataSource {
  Future<Either<Failures, ProductResponseEntity>> getAllProducts();
}
