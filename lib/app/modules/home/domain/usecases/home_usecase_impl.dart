import 'package:imperio/app/modules/home/domain/repositories/home_repository.dart';
import 'package:imperio/app/modules/shared/response/response_presentation.dart';

import 'home_usecase.dart';

class HomeUseCaseImpl implements HomeUseCase {
  final HomeRepository _homeRepository;

  HomeUseCaseImpl(this._homeRepository);

  @override
  Future<ResponsePresentation> championships() async {
    try {
      var re = await _homeRepository.championships();
      return ResponsePresentation(success: true, body: re);
    } catch (e) {
      return ResponsePresentation(success: false, body: e.toString());
    }
  }

  @override
  Future<ResponsePresentation> tips() async {
    try {
      var re = await _homeRepository.tips();
      return ResponsePresentation(success: true, body: re);
    } catch (e) {
      return ResponsePresentation(success: false, body: e.toString());
    }
  }

  @override
  Future<ResponsePresentation> wonBets() async {
    try {
      var re = await _homeRepository.wonBets();
      return ResponsePresentation(success: true, body: re);
    } catch (e) {
      return ResponsePresentation(success: false, body: e.toString());
    }
  }

  @override
  Future<ResponsePresentation> bonus() async {
    try {
      var re = await _homeRepository.bonus();
      return ResponsePresentation(success: true, body: re);
    } catch (e) {
      return ResponsePresentation(success: false, body: e.toString());
    }
  }

  @override
  Future<ResponsePresentation> matches() async {
    try {
      var re = await _homeRepository.matches();
      return ResponsePresentation(success: true, body: re);
    } catch (e) {
      return ResponsePresentation(success: false, body: e.toString());
    }
  }
}
