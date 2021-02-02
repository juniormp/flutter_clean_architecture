import 'package:dio/dio.dart';

class ClientHttpService {
  final Dio dio = Dio();

  Future get(String url) async {
    var response = await dio.get(url);
    return response.data;
  }
}
