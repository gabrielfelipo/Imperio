import 'package:imperio/app/modules/shared/response/response_presentation.dart';

abstract class LoginUseCase {
  Future<ResponsePresentation> call();
}
