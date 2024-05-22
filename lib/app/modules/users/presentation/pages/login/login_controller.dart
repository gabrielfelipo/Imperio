import 'package:flutter_modular/flutter_modular.dart';
import 'package:imperio/app/modules/shared/response/response_presentation.dart';
import 'package:imperio/app/modules/users/domain/models/dtos/login_dto.dart';
import 'package:imperio/app/modules/users/domain/repositories/login_repository.dart';
import 'package:imperio/app/modules/users/domain/usecases/login_usecase.dart';

class LoginController {
  LoginController(this._loginUseCase);

  final LoginUseCase _loginUseCase;

  LoginDto token = LoginDto(authToken: "", refreshToken: "");
  // final loginUseCase = Modular.get<LoginRepository>();

  Future<void> postData() async {
    ResponsePresentation response = await _loginUseCase();

    if (!response.success) {
      print(response.message);
    } else {
      token = response.body;
    }
  }
}
