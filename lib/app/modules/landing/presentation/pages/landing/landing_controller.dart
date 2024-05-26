import 'package:flutter_modular/flutter_modular.dart';

class LandingController {
  bool loading = false;

  void setLoading(bool value) {
    loading = value;
  }

  void next() {
    Modular.to.navigate('/email');
  }
}
