import 'package:imperio/app/modules/match/domain/models/dtos/bet_dto.dart';
import 'package:imperio/app/modules/match/domain/models/dtos/last_match_dto.dart';
import 'package:imperio/app/modules/match/domain/models/dtos/match_dto.dart';
import 'package:imperio/app/modules/match/domain/models/dtos/odd_match_dto.dart';

abstract class MatchRepository {
  Future<MatchDto> match(int index);
  Future<List<BetDto>> bets(int index);
  Future<List<LastMatchDto>> lastMatches(int index);
  Future<List<OddsMatchDto>> odds(int index);
}
