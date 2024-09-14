
import 'package:flutter/material.dart';
import 'package:task_app/core/routes_manager/routes.dart';

import '../../presentation/screens/products_screen.dart';



class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.productsScreenRoute:
        return MaterialPageRoute(builder: (_) => ProductsScreen());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('No Route Found'),
        ),
        body: const Center(child: Text('No Route Found')),
      ),
    );
  }
}
