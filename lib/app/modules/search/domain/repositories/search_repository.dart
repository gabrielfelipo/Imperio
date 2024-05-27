import 'package:imperio/app/modules/search/domain/models/dtos/search_dto.dart';

abstract class SearchRepository {
  Future<List<SearchDto>> call();
}
