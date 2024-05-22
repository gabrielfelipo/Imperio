import 'package:imperio/app/modules/users/domain/models/dtos/login_dto.dart';

abstract class LoginRepository {
  Future<LoginDto> call();
}
