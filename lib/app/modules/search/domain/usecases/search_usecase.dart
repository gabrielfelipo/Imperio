import 'package:imperio/app/modules/shared/response/response_presentation.dart';

abstract class SearchUseCase {
  Future<ResponsePresentation> call();
}
