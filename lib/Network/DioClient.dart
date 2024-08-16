import 'package:dio/dio.dart';

class DioClient {
  Dio getInstance() {
    return Dio(BaseOptions(
      baseUrl: 'https://music.xpertbotacademy.online/api',
      connectTimeout: Duration(seconds: 5), //if no response timeout after 5
      receiveTimeout: Duration(seconds: 5),
      contentType: Headers.jsonContentType, //specify the type of content that the server will receive
      responseType: ResponseType.json, //specify the type of response
    ));
  }
}
