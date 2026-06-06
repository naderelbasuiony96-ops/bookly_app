import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://api.bigbookapi.com/search-books?';
  final Dio dio;
  ApiService(this.dio);

  Future<Map<String, dynamic>> get({required String endPoind}) async {
    var response = await dio.get('$_baseUrl$endPoind');

    return response.data;
  }
}
