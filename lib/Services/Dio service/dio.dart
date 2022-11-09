import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;

  static init() {
    dio = Dio(BaseOptions(baseUrl: 'https://student.valuxapps.com/api/'));
  }

  static Future<Response?> getData(
      String url, Map<String, dynamic> query) async {
    return await dio?.get(url, queryParameters: query);
  }

  static Future<Response?> postData(String url, Map<String, dynamic> body,
      {Map<String, dynamic>? query}) async {
    return await dio?.post(url, data: body, queryParameters: query);
  }
}
