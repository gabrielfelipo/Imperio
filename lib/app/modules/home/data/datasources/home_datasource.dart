abstract class HomeDataSource {
  Future<List<Map<String, dynamic>>> championships();
  Future<List<Map<String, dynamic>>> tips();
  Future<List<Map<String, dynamic>>> wonBets();
  Future<List<Map<String, dynamic>>> bonus();
  Future<List<Map<String, dynamic>>> matches();
}
