import 'package:imperio/app/modules/match/domain/repositories/match_repository.dart';
import 'package:imperio/app/modules/shared/response/response_presentation.dart';

import 'match_usecase.dart';

class MatchUseCaseImpl implements MatchUseCase {
  final MatchRepository _matchRepository;

  MatchUseCaseImpl(this._matchRepository);

  @override
  Future<ResponsePresentation> match(int index) async {
    try {
      var re = await _matchRepository.match(index);
      return ResponsePresentation(success: true, body: re);
    } catch (e) {
      return ResponsePresentation(success: false, body: e.toString());
    }
  }

  @override
  Future<ResponsePresentation> bets(int index) async {
    try {
      var re = await _matchRepository.bets(index);
      return ResponsePresentation(success: true, body: re);
    } catch (e) {
      return ResponsePresentation(success: false, body: e.toString());
    }
  }

  @override
  Future<ResponsePresentation> lastMatches(int index) async {
    try {
      var re = await _matchRepository.lastMatches(index);
      return ResponsePresentation(success: true, body: re);
    } catch (e) {
      return ResponsePresentation(success: false, body: e.toString());
    }
  }

  @override
  Future<ResponsePresentation> odds(int index) async {
    try {
      var re = await _matchRepository.odds(index);
      return ResponsePresentation(success: true, body: re);
    } catch (e) {
      return ResponsePresentation(success: false, body: e.toString());
    }
  }
}
