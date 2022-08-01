import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;

  static void init() {
    var option = BaseOptions(
      baseUrl: "https://www.goldapi.io/api/",
      receiveDataWhenStatusError: true,
    );
    dio = Dio(option);
  }

  static Future<Response> getData(String url,)
  {
    dio!.options.headers = {
      'x-access-token': 'goldapi-co60ytl69d69t1-io',
    };
    return  dio!.get(
      url,
    );
  }
}
