import 'package:dio/dio.dart';

import '../../data/datasources/home_datasource.dart';

class HomeDataSourceImpl implements HomeDataSource {
  HomeDataSourceImpl() {
    httpClient.options.baseUrl = 'https://6569cc7dde53105b0dd7af5c.mockapi.io/';

    httpClient.options.connectTimeout = const Duration(seconds: 5);
    httpClient.options.receiveTimeout = const Duration(seconds: 3);
  }

  final httpClient = Dio();

  @override
  Future<List<Map<String, dynamic>>> championships() async {
    var response = await httpClient.get('/championships');

    return List.from(response.data);
  }

  @override
  Future<List<Map<String, dynamic>>> tips() async {
    var response = await httpClient.get('/tips');

    return List.from(response.data);
  }

  @override
  Future<List<Map<String, dynamic>>> wonBets() async {
    var response = await httpClient.get('/won_bets');

    return List.from(response.data);
  }

  @override
  Future<List<Map<String, dynamic>>> bonus() async {
    var response = await httpClient.get('/bonus');

    return List.from(response.data);
  }

  @override
  Future<List<Map<String, dynamic>>> matches() async {
    var response = await httpClient.get('/matches');

    return List.from(response.data);
  }
}
