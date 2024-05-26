import 'package:flutter_modular/flutter_modular.dart';
import 'package:imperio/app/modules/home/home_module.dart';
import 'package:imperio/app/modules/match/presentation/pages/match/match_controller.dart';
import 'package:imperio/app/modules/match/presentation/pages/match/match_page.dart';

class MatchModule extends Module {
  @override
  void binds(i) {
    i.addSingleton<MatchController>(
      () => MatchController(),
    );
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const MatchPage());

    // r.module('../home/', module: HomeModule());
  }
}
