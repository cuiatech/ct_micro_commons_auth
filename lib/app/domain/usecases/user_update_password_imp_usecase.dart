// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_modular/flutter_modular.dart';
import 'user_update_password_usecase.dart';
import '../repositories/user_update_password_repository.dart';
import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';

final $UserUpdatePasswordImpUsecase = Bind.lazySingleton(
  (i) => UserUpdatePasswordImpUsecase(i.get()),
  export: true,
);

class UserUpdatePasswordImpUsecase implements UserUpdatePasswordUsecase {
  final UserUpdatePasswordRepository _userUpdatePasswordRepository;

  UserUpdatePasswordImpUsecase(this._userUpdatePasswordRepository);

  @override
  Future<CuiaResponse> call(String code, String newPassword) async {
    return await _userUpdatePasswordRepository(code, newPassword);
  }
}
