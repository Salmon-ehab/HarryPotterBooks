import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;
  ApiService(this.dio);
  final String _baseUrl = 'https://api.potterdb.com';

  Future<Map<String, dynamic>> getData({required String endPoint}) async {
    Response response = await dio.get("$_baseUrl$endPoint");
    return response.data;
  }
}
