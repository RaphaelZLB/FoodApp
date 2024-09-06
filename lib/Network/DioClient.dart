import 'package:dio/dio.dart';

late Dio dio;

class DioClient {
  Dio getInstance() {
    return Dio(BaseOptions(
      baseUrl: 'https://yummly2.p.rapidapi.com',

      headers: {
        "x-rapidapi-key": "fc45d594efmsh48ebad56fe0a650p161ba0jsnbe7291cb4302",
        "x-rapidapi-host": "yummly2.p.rapidapi.com",
        "useQueryString": "true",
      },
      receiveDataWhenStatusError: true,
      //gives detailed info about the error
      connectTimeout: Duration(seconds: 20),
      //if no response timeout after 20
      receiveTimeout: Duration(seconds: 20),
      contentType: Headers.jsonContentType,
      //specify the type of content that the server will receive
      responseType: ResponseType.json, //specify the type of response
    ));
  }

  // //ymkn hon mn hot l endpoints tb3 lAPI
  // Future<List<dynamic>> getAllList() async {
  //   try {
  //     Response response = await dio.get('/endpoint');
  //     print(response.data.toString());
  //     return response.data;
  //   } catch (e) {
  //     print(e.toString());
  //     return [];
  //   }
  // }
}