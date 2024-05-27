import 'package:imperio/app/modules/shared/response/response_presentation.dart';

abstract class MatchUseCase {
  Future<ResponsePresentation> match(int index);
  Future<ResponsePresentation> bets(int index);
  Future<ResponsePresentation> lastMatches(int index);
  Future<ResponsePresentation> odds(int index);
}
