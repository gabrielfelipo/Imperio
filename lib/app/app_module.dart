import 'package:flutter_modular/flutter_modular.dart';
import 'package:imperio/app/modules/users/login_module.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.module('/', module: LoginModule());
  }
}
