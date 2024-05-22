import 'package:flutter_modular/flutter_modular.dart';
import 'package:imperio/app/modules/users/data/datasources/login_datasource.dart';
import 'package:imperio/app/modules/users/data/repositories/login_repository_impl.dart';
import 'package:imperio/app/modules/users/domain/repositories/login_repository.dart';
import 'package:imperio/app/modules/users/domain/usecases/login_usecase_impl.dart';
import 'package:imperio/app/modules/users/external/datasources/login_datasource_impl.dart';
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
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const LoginPage());
  }

  // @override
  // final List<ModularRoute> routes = [
  //   ChildRoute(Modular.initialRoute, child: (_, args) => const HomePage()),
  // ];
}
