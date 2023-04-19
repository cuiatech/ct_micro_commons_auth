import 'package:flutter_modular/flutter_modular.dart';
import 'user_login_usecase.dart';
import '../repositories/user_login_repository.dart';
import 'package:ct_micro_commons_shared/ct_micro_commons_shared.dart';

final $UserLoginImpUsecase = Bind.lazySingleton(
  (i) => UserLoginImpUsecase(i.get()),
  export: true,
);

class UserLoginImpUsecase implements UserLoginUsecase {
  final UserLoginRepository _userLoginRepository;

  UserLoginImpUsecase(this._userLoginRepository);

  @override
  Future<CuiaResponse> call(String email, String password) async {
    return await _userLoginRepository(email, password);
  }
}
