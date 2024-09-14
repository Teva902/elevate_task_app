
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/resources/values_manager.dart';
import '../../core/resources/color_manager.dart';
import '../../core/widget/dialog_utils.dart';
import '../cubit/products_screen_states.dart';
import '../cubit/products_screen_view_model.dart';
import '../widgets/custom_product_widget.dart';

class ProductsScreen extends StatelessWidget {
  get automaticallyImplyLeading => null;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProductScreenViewModel, ProductScreenState>(
      listener: (context, state) {
        state is ProductScreenErrorState
            ? DialogUtils.showMessage(
                context: context, message: state.failures.errorMessage)
            : Container();
      },
      child: BlocBuilder<ProductScreenViewModel, ProductScreenState>(
        bloc: ProductScreenViewModel.get(context)..getAllProducts(),
        builder: (context, state) {
          return Scaffold(
              body: state is ProductScreenSuccessState
                  ? Padding(
                      padding: const EdgeInsets.all(AppPadding.p16),
                      child: Column(
                        children: [
                          Expanded(
                            child: GridView.builder(
                              itemCount: ProductScreenViewModel.get(context)
                                  .productList
                                  .length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8,
                                childAspectRatio: 7 / 9,
                              ),
                              itemBuilder: (context, index) {
                                return ProductItemWidget(
                                  product: ProductScreenViewModel.get(context)
                                      .productList[index],
                                );
                              },
                              scrollDirection: Axis.vertical,
                            ),
                          )
                        ],
                      ),
                    )
                  : Center(
                      child: CircularProgressIndicator(
                        color: ColorManager.primaryDark,
                      ),
                    ));
        },
      ),
    );
  }
}
