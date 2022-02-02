import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://wordsapiv1.p.rapidapi.com/words/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
    required String url,
  }) async {
    dio.options.headers = {
      'x-rapidapi-key': 'a24ed8dd8bmshc9f6406bada00a0p14170fjsnf4f89569b873'
    };

    return await dio.get(
      url,
    );
  }

  static Future<Response> postData({
    required String url,
    Map<String, dynamic>? query,
    String lang = 'en',
    String? token,
    required Map<String, dynamic> data,
  }) {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'lang': lang,
      'Authorization': token ?? '',
    };

    return dio.post(
      url,
      queryParameters: query,
      data: data,
    );
  }

  static Future<Response> putData({
    required String url,
    Map<String, dynamic>? query,
    String lang = 'en',
    String? token,
    required Map<String, dynamic> data,
  }) {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'lang': lang,
      'Authorization': token ?? '',
    };

    return dio.put(
      url,
      queryParameters: query,
      data: data,
    );
  }
}
