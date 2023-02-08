// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_modular/flutter_modular.dart';
import 'user_send_validation_email_usecase.dart';
import '../repositories/user_send_validation_email_repository.dart';
import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';

final $UserSendValidationEmailImpUsecase = Bind.lazySingleton(
  (i) => UserSendValidationEmailImpUsecase(i.get()),
  export: true,
);

class UserSendValidationEmailImpUsecase
    implements UserSendValidationEmailUsecase {
  final UserSendValidationEmailRepository _userSendValidationEmailRepository;

  UserSendValidationEmailImpUsecase(this._userSendValidationEmailRepository);

  @override
  Future<CuiaResponse> call(String redirect) async {
    return await _userSendValidationEmailRepository(redirect);
  }
}
