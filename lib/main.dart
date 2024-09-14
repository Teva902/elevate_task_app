import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/presentation/cubit/products_screen_view_model.dart';

import 'core/my_bloc_observer.dart';
import 'core/routes_manager/route_generator.dart';
import 'core/routes_manager/routes.dart';
import 'domain/di/di.dart';


void main() {
  Bloc.observer = MyBlocObserver();
  configureDependencies();
  runApp(MultiBlocProvider(providers: [
    BlocProvider<ProductScreenViewModel>(
        create: (context) => getIt<ProductScreenViewModel>()),
  ], child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: child,
        onGenerateRoute: RouteGenerator.getRoute,
        initialRoute: Routes.productsScreenRoute,
      ),
    );
  }
}
