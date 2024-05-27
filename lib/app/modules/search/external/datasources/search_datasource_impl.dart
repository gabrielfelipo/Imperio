import '../../data/datasources/search_datasource.dart';
import 'package:dio/dio.dart';

class SearchDataSourceImpl implements SearchDataSource {
  SearchDataSourceImpl() {
    httpClient.options.baseUrl = 'https://6569cc7dde53105b0dd7af5c.mockapi.io/';
    httpClient.options.connectTimeout = const Duration(seconds: 5);
    httpClient.options.receiveTimeout = const Duration(seconds: 3);
  }

  final httpClient = Dio();

  @override
  Future<List<Map<String, dynamic>>> call() async {
    var response = await httpClient.get('/sports');

    return List.from(response.data);
  }
}
