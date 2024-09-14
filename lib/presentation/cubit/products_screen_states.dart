

import '../../../../domain/entity/ProductResponseEntity.dart';
import '../../domain/failuer.dart';

abstract class ProductScreenState {}

class ProductScreenInitialState extends ProductScreenState {}

class ProductScreenLoadingState extends ProductScreenState {}

class ProductScreenErrorState extends ProductScreenState {
  Failures failures;

  ProductScreenErrorState({required this.failures});
}

class ProductScreenSuccessState extends ProductScreenState {
  ProductResponseEntity productResponseEntity;

  ProductScreenSuccessState({required this.productResponseEntity});
}
