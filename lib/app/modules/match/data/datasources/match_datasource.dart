abstract class MatchDataSource {
  Future<Map<String, dynamic>> match(int index);
  Future<List<Map<String, dynamic>>> lastMatches(int index);
  Future<List<Map<String, dynamic>>> bets(int index);
  Future<List<Map<String, dynamic>>> odds(int index);
}
