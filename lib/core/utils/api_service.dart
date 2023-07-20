import 'package:dio/dio.dart';

class ApiGetModel {
  static const String _baseUrl = 'http://magdsoft.ahmedshawky.fun/api/';
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: _baseUrl,
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
    required String endPoint,
  }) async {
    return await dio.get(endPoint);
  }

}

class ApiPostModel
{
  static const String _baseUrl = 'https://magdsoft.ahmedshawky.fun/api/';
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: _baseUrl,
        receiveDataWhenStatusError: true,
        headers: {}
      ),
    );
  }

  static Future<Response> postData({
    required String endPoint,
    Map<String, dynamic>? query,
    required Map<String, dynamic> body,

  }) async {
    return await dio.post(
      endPoint,
      data: body,
    );
  }
}
