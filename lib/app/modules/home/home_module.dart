import 'package:flutter_modular/flutter_modular.dart';
import 'package:imperio/app/modules/home/presentation/pages/home/home_controller.dart';
import 'package:imperio/app/modules/home/presentation/pages/home/home_page.dart';
import 'package:imperio/app/modules/match/match_module.dart';
import 'package:imperio/app/modules/search/presentation/pages/search/search_controller.dart';
import 'package:imperio/app/modules/search/presentation/pages/search/search_page.dart';

class HomeModule extends Module {
  @override
  void binds(i) {
    i.addSingleton<HomeController>(
      () => HomeController(),
    );
    i.addSingleton<SearchControllerPage>(
      () => SearchControllerPage(),
    );
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const HomePage());
    r.child('/sports', child: (context) => const SearchPage());

    r.module('/match/', module: MatchModule());
  }
}
