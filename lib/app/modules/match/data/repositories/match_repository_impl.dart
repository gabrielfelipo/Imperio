import 'package:imperio/app/modules/match/data/datasources/match_datasource.dart';
import 'package:imperio/app/modules/match/domain/models/dtos/bet_dto.dart';
import 'package:imperio/app/modules/match/domain/models/dtos/last_match_dto.dart';
import 'package:imperio/app/modules/match/domain/models/dtos/match_dto.dart';
import 'package:imperio/app/modules/match/domain/models/dtos/odd_match_dto.dart';

import '../../domain/repositories/match_repository.dart';

class MatchRepositoryImpl implements MatchRepository {
  final MatchDataSource _matchDataSource;

  MatchRepositoryImpl(this._matchDataSource);
  @override
  Future<MatchDto> match(int index) async {
    try {
      var res = await _matchDataSource.match(index);
      return MatchDto.fromMap(res);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<BetDto>> bets(int index) async {
    try {
      var res = await _matchDataSource.bets(index);
      return res.map((e) => BetDto.fromMap(e)).toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<LastMatchDto>> lastMatches(int index) async {
    try {
      var res = await _matchDataSource.lastMatches(index);
      return res.map((e) => LastMatchDto.fromMap(e)).toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<OddsMatchDto>> odds(int index) async {
    try {
      var res = await _matchDataSource.odds(index);
      return res.map((e) => OddsMatchDto.fromMap(e)).toList();
    } catch (e) {
      rethrow;
    }
  }
}
