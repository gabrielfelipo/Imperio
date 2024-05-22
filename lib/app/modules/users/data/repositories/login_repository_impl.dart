import 'package:imperio/app/modules/users/data/datasources/login_datasource.dart';
import 'package:imperio/app/modules/users/domain/models/dtos/login_dto.dart';

import '../../domain/repositories/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  LoginRepositoryImpl(this._loginDataSource);

  final LoginDataSource _loginDataSource;

  @override
  Future<LoginDto> call() async {
    try {
      var response = await _loginDataSource();
      return LoginDto.fromMap(response);
    } catch (error) {
      rethrow;
    }
  }
}
