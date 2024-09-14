import 'package:dartz/dartz.dart';
import 'package:task_app/domain/failuer.dart';

import '../entity/ProductResponseEntity.dart';


abstract class HomeRepository {
  Future<Either<Failures, ProductResponseEntity>> getAllProducts();
}
