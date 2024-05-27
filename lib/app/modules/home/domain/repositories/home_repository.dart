import 'package:imperio/app/modules/home/domain/models/dtos/bonus_dto.dart';
import 'package:imperio/app/modules/home/domain/models/dtos/championship_dto.dart';
import 'package:imperio/app/modules/home/domain/models/dtos/tip_dto.dart';
import 'package:imperio/app/modules/home/domain/models/dtos/won_bet.dart';
import 'package:imperio/app/modules/match/domain/models/dtos/match_dto.dart';

abstract class HomeRepository {
  Future<List<ChampionshipDto>> championships();
  Future<List<TipDto>> tips();
  Future<List<WonBetDto>> wonBets();
  Future<List<BonusDto>> bonus();
  Future<List<MatchDto>> matches();
}
