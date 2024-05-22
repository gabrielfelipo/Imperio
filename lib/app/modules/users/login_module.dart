import 'package:flutter_modular/flutter_modular.dart';
import 'package:imperio/app/modules/users/data/repositories/login_repository_impl.dart';
import 'package:imperio/app/modules/users/domain/usecases/login_usecase_impl.dart';
import 'package:imperio/app/modules/users/external/datasources/login_datasource_impl.dart';
import 'package:imperio/app/modules/users/presentation/pages/login/login_page.dart';

class LoginModule extends Module {
  @override
  void binds(i) {
    i.addSingleton(LoginDataSourceImpl.new);
    i.addSingleton(LoginRepositoryImpl.new);
    i.addSingleton(LoginUseCaseImpl.new);
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
