import 'package:flutter_modular/flutter_modular.dart';
import 'package:imperio/app/modules/home/home_module.dart';
import 'package:imperio/app/modules/landing/presentation/pages/landing/landing_controller.dart';
import 'package:imperio/app/modules/landing/presentation/pages/landing/landing_page.dart';
import 'package:imperio/app/modules/users/data/datasources/login_datasource.dart';
import 'package:imperio/app/modules/users/data/repositories/login_repository_impl.dart';
import 'package:imperio/app/modules/users/domain/repositories/login_repository.dart';
import 'package:imperio/app/modules/users/domain/usecases/login_usecase_impl.dart';
import 'package:imperio/app/modules/users/external/datasources/login_datasource_impl.dart';
import 'package:imperio/app/modules/users/presentation/enums/login_state.view.dart';
import 'package:imperio/app/modules/users/presentation/pages/login/login_controller.dart';
import 'package:imperio/app/modules/users/presentation/pages/login/login_page.dart';

class LoginModule extends Module {
  @override
  void binds(i) {
    i.addSingleton<LoginDataSource>(() => LoginDataSourceImpl());
    i.addSingleton<LoginRepository>(
      () => LoginRepositoryImpl(Modular.get<LoginDataSource>()),
    );
    i.addSingleton<LoginUseCaseImpl>(
      () => LoginUseCaseImpl(Modular.get<LoginRepository>()),
    );
    i.addSingleton<LoginController>(
      () => LoginController(Modular.get<LoginUseCaseImpl>()),
    );
    i.addSingleton<LandingController>(
      () => LandingController(),
    );
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const LandingPage());

    r.child('/email',
        child: (context) => const LoginPage(
              state: LoginStateView.email,
            ));

    r.child('/password',
        child: (context) => const LoginPage(
              state: LoginStateView.password,
            ));

    r.module('/home/', module: HomeModule());
  }
}
