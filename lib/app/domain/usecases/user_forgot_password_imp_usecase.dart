import 'package:flutter_modular/flutter_modular.dart';
import 'user_forgot_password_usecase.dart';
import '../repositories/user_forgot_password_repository.dart';
import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';

final $UserForgotPasswordImpUsecase = Bind.lazySingleton(
  (i) => UserForgotPasswordImpUsecase(i.get()),
  export: true,
);

class UserForgotPasswordImpUsecase implements UserForgotPasswordUsecase {
  final UserForgotPasswordRepository _userForgotPasswordRepository;

  UserForgotPasswordImpUsecase(this._userForgotPasswordRepository);

  @override
  Future<CuiaResponse> call(String email, String redirect) async {
    return await _userForgotPasswordRepository(email, redirect);
  }
}
