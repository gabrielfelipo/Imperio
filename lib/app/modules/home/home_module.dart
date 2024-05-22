import 'package:flutter_modular/flutter_modular.dart';
import 'home_page.dart';

class HomeModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (context) => const HomePage());
  }

  // @override
  // final List<ModularRoute> routes = [
  //   ChildRoute(Modular.initialRoute, child: (_, args) => const HomePage()),
  // ];
}
