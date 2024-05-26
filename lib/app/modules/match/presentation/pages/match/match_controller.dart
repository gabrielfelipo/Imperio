import 'package:flutter_modular/flutter_modular.dart';

class MatchController {
  bool loading = false;

  void setLoading(bool value) {
    loading = value;
  }

  void previous() {
    Modular.to.pop();
  }
}
