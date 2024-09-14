
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:task_app/presentation/cubit/products_screen_states.dart';

import '../../domain/entity/ProductResponseEntity.dart';
import '../../domain/use_case/get_all_product_use_case.dart';

@injectable
class ProductScreenViewModel extends Cubit<ProductScreenState> {
  GetAllProductsUseCase getAllProductsUseCase;

  ProductScreenViewModel({
    required this.getAllProductsUseCase,
  }) : super(ProductScreenInitialState());
  List<ProductEntity> productList = [];
  int numOfCartItem = 0;

  static ProductScreenViewModel get(context) => BlocProvider.of(context);

  void getAllProducts() async {
    emit(ProductScreenLoadingState());
    var either = await getAllProductsUseCase.invoke();
    either.fold((error) {
      emit(ProductScreenErrorState(failures: error));
    }, (response) {
      productList = response.data!;
      emit(ProductScreenSuccessState(productResponseEntity: response));
    });
  }
}
