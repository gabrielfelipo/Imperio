import 'package:flutter_modular/flutter_modular.dart';

class HomeController {
  bool loading = false;

  void setLoading(bool value) {
    loading = value;
  }

  void toSportsSearch() {
    Modular.to.pushNamed('/home/sports');
  }

  void toMatchModule() {
    Modular.to.pushNamed('/home/match/');
  }
}
