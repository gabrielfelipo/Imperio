import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:imperio/app/modules/match/data/datasources/match_datasource.dart';
import 'package:imperio/app/modules/match/data/repositories/match_repository_impl.dart';
import 'package:imperio/app/modules/match/domain/repositories/match_repository.dart';
import 'package:imperio/app/modules/match/domain/usecases/match_usecase.dart';
import 'package:imperio/app/modules/match/domain/usecases/match_usecase_impl.dart';
import 'package:imperio/app/modules/match/external/datasources/match_datasource_impl.dart';
import 'package:imperio/app/modules/match/presentation/pages/match/match_controller.dart';
import 'package:imperio/app/modules/match/presentation/pages/match/match_page.dart';

class MatchModule extends Module {
  @override
  void binds(i) {
    i.addSingleton<MatchController>(
      () => MatchController(Modular.get<MatchUseCase>()),
    );

    i.addSingleton<MatchDataSource>(
      () => MatchDataSourceImpl(),
    );

    i.addSingleton<MatchUseCase>(
      () => MatchUseCaseImpl(Modular.get<MatchRepository>()),
    );

    i.addSingleton<MatchRepository>(
      () => MatchRepositoryImpl(Modular.get<MatchDataSource>()),
    );
  }

  @override
  void routes(r) {
    r.child('/', child: (context) {
      final index = Modular.args.data as int?;
      if (index != null) {
        return MatchPage(index: index);
      } else {
        // Handle error, e.g., show an error page or navigate back
        return Scaffold(
          body: Center(child: Text('Error: Index is null')),
        );
      }
    });
  }
}
