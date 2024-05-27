import 'package:flutter_modular/flutter_modular.dart';
import 'package:imperio/app/modules/home/domain/models/dtos/bonus_dto.dart';
import 'package:imperio/app/modules/home/domain/models/dtos/championship_dto.dart';
import 'package:imperio/app/modules/home/domain/models/dtos/tip_dto.dart';
import 'package:imperio/app/modules/home/domain/models/dtos/won_bet.dart';
import 'package:imperio/app/modules/home/domain/usecases/home_usecase.dart';
import 'package:imperio/app/modules/match/domain/models/dtos/match_dto.dart';

class HomeController {
  HomeController(this._homeUseCase);

  bool loading = false;

  final HomeUseCase _homeUseCase;

  List<ChampionshipDto> championships = [];
  List<TipDto> tips = [];
  List<WonBetDto> wonBets = [];
  List<BonusDto> bonus = [];
  List<MatchDto> matches = [];

  Future<void> getData() async {
    await Future.wait([
      getTips(),
      getChampionships(),
      getWonBets(),
      getBonus(),
      getMatches(),
    ]);
  }

  Future<void> getChampionships() async {
    var res = await _homeUseCase.championships();

    if (!res.success) {
      championships = [];
      print(res.message);
      return;
    }

    championships = res.body as List<ChampionshipDto>;
  }

  Future<void> getTips() async {
    var res = await _homeUseCase.tips();

    if (!res.success) {
      tips = [];
      print(res.message);
      return;
    }

    tips = res.body as List<TipDto>;
  }

  Future<void> getWonBets() async {
    var res = await _homeUseCase.wonBets();

    if (!res.success) {
      wonBets = [];
      print(res.message);
      return;
    }

    wonBets = res.body as List<WonBetDto>;
  }

  Future<void> getBonus() async {
    var res = await _homeUseCase.bonus();

    if (!res.success) {
      bonus = [];
      print(res.message);
      return;
    }

    bonus = res.body as List<BonusDto>;
  }

  Future<void> getMatches() async {
    var res = await _homeUseCase.matches();

    if (!res.success) {
      matches = [];
      print(res.message);
      return;
    }

    matches = res.body as List<MatchDto>;
  }

  void setLoading(bool value) {
    loading = value;
  }

  void toSportsSearch() {
    Modular.to.pushNamed('/home/sports');
  }

  void toMatchModule(int index) {
    Modular.to.pushNamed('/home/intermediate/$index');
  }
}
