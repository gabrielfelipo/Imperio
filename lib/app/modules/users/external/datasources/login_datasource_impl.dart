import 'package:dio/dio.dart';
import '../../data/datasources/login_datasource.dart';

class LoginDataSourceImpl implements LoginDataSource {
  LoginDataSourceImpl() {
    httpClient.options.baseUrl = 'https://6569cc7dde53105b0dd7af5c.mockapi.io';
    httpClient.options.connectTimeout = const Duration(seconds: 50);
    httpClient.options.receiveTimeout = const Duration(seconds: 30);
  }

  final httpClient = Dio();

  @override
  Future<Map<String, dynamic>> call() async {
    var response = await httpClient.post('/login', data: {});

    return response.data;
  }
}
