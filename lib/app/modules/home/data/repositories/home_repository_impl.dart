import 'package:imperio/app/modules/home/data/datasources/home_datasource.dart';
import 'package:imperio/app/modules/home/domain/models/dtos/bonus_dto.dart';
import 'package:imperio/app/modules/home/domain/models/dtos/championship_dto.dart';
import 'package:imperio/app/modules/home/domain/models/dtos/tip_dto.dart';
import 'package:imperio/app/modules/home/domain/models/dtos/won_bet.dart';
import 'package:imperio/app/modules/match/domain/models/dtos/match_dto.dart';

import '../../domain/repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeDataSource _homeDataSource;

  HomeRepositoryImpl(this._homeDataSource);
  @override
  Future<List<ChampionshipDto>> championships() async {
    try {
      var res = await _homeDataSource.championships();
      return res.map((e) => ChampionshipDto.fromMap(e)).toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<TipDto>> tips() async {
    try {
      var res = await _homeDataSource.tips();
      return res.map((e) => TipDto.fromMap(e)).toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<WonBetDto>> wonBets() async {
    try {
      var res = await _homeDataSource.wonBets();
      return res.map((e) => WonBetDto.fromMap(e)).toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<BonusDto>> bonus() async {
    try {
      var res = await _homeDataSource.bonus();
      return res.map((e) => BonusDto.fromMap(e)).toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<MatchDto>> matches() async {
    try {
      var res = await _homeDataSource.matches();
      return res.map((e) => MatchDto.fromMap(e)).toList();
    } catch (e) {
      rethrow;
    }
  }
}
