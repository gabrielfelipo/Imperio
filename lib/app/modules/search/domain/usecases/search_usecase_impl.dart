import 'package:imperio/app/modules/search/domain/repositories/search_repository.dart';
import 'package:imperio/app/modules/shared/response/response_presentation.dart';

import 'search_usecase.dart';

class SearchUseCaseImpl implements SearchUseCase {
  SearchUseCaseImpl(this._searchRepository);

  final SearchRepository _searchRepository;
  @override
  Future<ResponsePresentation> call() async {
    try {
      var re = await _searchRepository();
      return ResponsePresentation(success: true, body: re);
    } catch (e) {
      return ResponsePresentation(success: false, body: e.toString());
    }
  }
}
