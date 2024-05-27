import 'package:imperio/app/modules/shared/response/response_presentation.dart';

abstract class HomeUseCase {
  Future<ResponsePresentation> championships();
  Future<ResponsePresentation> tips();
  Future<ResponsePresentation> wonBets();
  Future<ResponsePresentation> bonus();
  Future<ResponsePresentation> matches();
}
