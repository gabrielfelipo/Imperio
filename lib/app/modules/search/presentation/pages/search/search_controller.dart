import 'package:flutter_modular/flutter_modular.dart';
import 'package:imperio/app/modules/search/domain/models/dtos/search_dto.dart';
import 'package:imperio/app/modules/search/domain/usecases/search_usecase.dart';
import 'package:imperio/app/modules/shared/response/response_presentation.dart';

class SearchControllerPage {
  SearchControllerPage(this._searchUseCase);

  final SearchUseCase _searchUseCase;

  List<SearchDto> sports = [];

  Future<void> getData() async {
    var res = await _searchUseCase();

    if (!res.success) {
      sports = [];
      print(res.message);
      return;
    }

    sports = res.body as List<SearchDto>;
  }

  void previous() {
    Modular.to.navigate('/home/');
  }
}
