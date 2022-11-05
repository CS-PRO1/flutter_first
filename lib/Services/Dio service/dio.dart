import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;
  //static dynamic data;

  static init() {
    dio = Dio(BaseOptions(baseUrl: 'https://newsapi.org/v2/'));
  }

  static Future<Response?> getData(
      String url, Map<String, dynamic> query) async {
    return await dio?.get(url, queryParameters: query);
  }
}
