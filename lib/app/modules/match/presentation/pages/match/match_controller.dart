import 'package:flutter_modular/flutter_modular.dart';
import 'package:imperio/app/modules/match/domain/models/dtos/bet_dto.dart';
import 'package:imperio/app/modules/match/domain/models/dtos/last_match_dto.dart';
import 'package:imperio/app/modules/match/domain/models/dtos/match_dto.dart';
import 'package:imperio/app/modules/match/domain/models/dtos/odd_match_dto.dart';
import 'package:imperio/app/modules/match/domain/usecases/match_usecase.dart';

class MatchController {
  MatchController(this._matchUseCase);

  bool loading = false;

  final MatchUseCase _matchUseCase;

  MatchDto? match;
  List<BetDto> bets = [];
  List<LastMatchDto> lastMaches = [];
  List<OddsMatchDto> odds = [];

  Future<void> getData(int index) async {
    await Future.wait([
      getMatch(index),
      getbets(index),
      getLastMatches(index),
      getOdds(index),
    ]);
  }

  Future<void> getMatch(int index) async {
    var res = await _matchUseCase.match(index);

    if (!res.success) {
      match = null;
      print(res.message);
      return;
    }

    match = res.body as MatchDto;
  }

  Future<void> getbets(int index) async {
    var res = await _matchUseCase.bets(index);

    if (!res.success) {
      bets = [];
      print(res.message);
      return;
    }

    bets = res.body as List<BetDto>;
  }

  Future<void> getLastMatches(int index) async {
    var res = await _matchUseCase.lastMatches(index);

    if (!res.success) {
      lastMaches = [];
      print(res.message);
      return;
    }

    lastMaches = res.body as List<LastMatchDto>;
  }

  Future<void> getOdds(int index) async {
    var res = await _matchUseCase.odds(index);

    if (!res.success) {
      odds = [];
      print(res.message);
      return;
    }

    odds = res.body as List<OddsMatchDto>;
  }

  void setLoading(bool value) {
    loading = value;
  }

  void previous() {
    Modular.to.pop();
  }
}
