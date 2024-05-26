import 'package:flutter_modular/flutter_modular.dart';

class SearchControllerPage {
  bool loading = false;

  void setLoading(bool value) {
    loading = value;
  }

  void previous() {
    Modular.to.navigate('/home/');
  }
}
