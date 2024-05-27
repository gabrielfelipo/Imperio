import 'package:flutter_modular/flutter_modular.dart';
import 'package:imperio/app/modules/home/data/datasources/home_datasource.dart';
import 'package:imperio/app/modules/home/data/repositories/home_repository_impl.dart';
import 'package:imperio/app/modules/home/domain/repositories/home_repository.dart';
import 'package:imperio/app/modules/home/domain/usecases/home_usecase.dart';
import 'package:imperio/app/modules/home/domain/usecases/home_usecase_impl.dart';
import 'package:imperio/app/modules/home/external/datasources/home_datasource_impl.dart';
import 'package:imperio/app/modules/home/presentation/pages/home/home_controller.dart';
import 'package:imperio/app/modules/home/presentation/pages/home/home_page.dart';
import 'package:imperio/app/modules/match/match_module.dart';
import 'package:imperio/app/modules/match/presentation/pages/intermediate_page.dart';
import 'package:imperio/app/modules/search/data/datasources/search_datasource.dart';
import 'package:imperio/app/modules/search/data/repositories/search_repository_impl.dart';
import 'package:imperio/app/modules/search/domain/repositories/search_repository.dart';
import 'package:imperio/app/modules/search/domain/usecases/search_usecase.dart';
import 'package:imperio/app/modules/search/domain/usecases/search_usecase_impl.dart';
import 'package:imperio/app/modules/search/external/datasources/search_datasource_impl.dart';
import 'package:imperio/app/modules/search/presentation/pages/search/search_controller.dart';
import 'package:imperio/app/modules/search/presentation/pages/search/search_page.dart';

class HomeModule extends Module {
  @override
  void binds(i) {
    i.addSingleton<HomeController>(
      () => HomeController(Modular.get<HomeUseCase>()),
    );

    i.addSingleton<HomeDataSource>(
      () => HomeDataSourceImpl(),
    );

    i.addSingleton<HomeUseCase>(
      () => HomeUseCaseImpl(Modular.get<HomeRepository>()),
    );

    i.addSingleton<HomeRepository>(
      () => HomeRepositoryImpl(Modular.get<HomeDataSource>()),
    );

    i.addSingleton<SearchControllerPage>(
      () => SearchControllerPage(Modular.get<SearchUseCase>()),
    );

    i.addSingleton<SearchDataSource>(
      () => SearchDataSourceImpl(),
    );

    i.addSingleton<SearchRepository>(
      () => SearchRepositoryImpl(Modular.get<SearchDataSource>()),
    );

    i.addSingleton<SearchUseCase>(
      () => SearchUseCaseImpl(Modular.get<SearchRepository>()),
    );
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const HomePage());
    r.child('/sports', child: (context) => const SearchPage());

    r.child('/intermediate/:index', child: (context) => IntermediatePage());
    r.module('/match', module: MatchModule());
  }
}
