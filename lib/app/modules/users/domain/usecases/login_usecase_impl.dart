import 'package:imperio/app/modules/shared/response/response_presentation.dart';
import 'package:imperio/app/modules/users/domain/repositories/login_repository.dart';

import 'login_usecase.dart';

class LoginUseCaseImpl implements LoginUseCase {
  LoginUseCaseImpl(this._loginRepository);

  final LoginRepository _loginRepository;
  @override
  Future<ResponsePresentation> call() async {
    try {
      var response = await _loginRepository();
      return ResponsePresentation(success: true, body: response);
    } catch (e) {
      return ResponsePresentation(success: false, message: e.toString());
    }
  }
}
