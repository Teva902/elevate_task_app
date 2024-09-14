import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../core/resources/constants_manager.dart';

@singleton
class ApiManager {
  late Dio dio;

  ApiManager() {
    dio = Dio();
  }

  Future<Response> getData(String endPoint,
      {Map<String, dynamic>? queryParameters, Map<String, dynamic>? headers}) {
    return dio.get(AppConstants.baseUrl + endPoint,
        options: Options(headers: headers, validateStatus: (status) => true),
        queryParameters: queryParameters);
  }
}
