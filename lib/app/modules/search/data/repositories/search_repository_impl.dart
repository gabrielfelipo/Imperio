import 'package:imperio/app/modules/search/data/datasources/search_datasource.dart';
import 'package:imperio/app/modules/search/domain/models/dtos/search_dto.dart';

import '../../domain/repositories/search_repository.dart';

class SearchRepositoryImpl implements SearchRepository {
  SearchRepositoryImpl(this._searchDataSource);
  final SearchDataSource _searchDataSource;

  @override
  Future<List<SearchDto>> call() async {
    try {
      var res = await _searchDataSource();
      return res.map((e) => SearchDto.fromMap(e)).toList();
    } catch (e) {
      rethrow;
    }
  }
}
