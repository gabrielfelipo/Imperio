import '../../data/datasources/match_datasource.dart';
import 'package:dio/dio.dart';

class MatchDataSourceImpl implements MatchDataSource {
  MatchDataSourceImpl() {
    httpClient.options.baseUrl =
        'https://6569cc7dde53105b0dd7af5c.mockapi.io/matches/';

    httpClient.options.connectTimeout = const Duration(seconds: 5);
    httpClient.options.receiveTimeout = const Duration(seconds: 3);
  }

  final httpClient = Dio();

  @override
  Future<Map<String, dynamic>> match(int index) async {
    var response = await httpClient.get('/$index');

    return response.data;
  }

  @override
  Future<List<Map<String, dynamic>>> lastMatches(int index) async {
    var response = await httpClient.get('/$index/last_matches');

    return List.from(response.data);
  }

  @override
  Future<List<Map<String, dynamic>>> bets(int index) async {
    var response = await httpClient.get('/$index/bets');

    return List.from(response.data);
  }

  @override
  Future<List<Map<String, dynamic>>> odds(int index) async {
    var response = await httpClient.get('/$index/odds');

    return List.from(response.data);
  }
}
