// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_modular/flutter_modular.dart';
import 'user_validation_email_usecase.dart';
import '../repositories/user_validation_email_repository.dart';
import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';

final $UserValidationEmailImpUsecase = Bind.lazySingleton(
  (i) => UserValidationEmailImpUsecase(i.get()),
  export: true,
);

class UserValidationEmailImpUsecase implements UserValidationEmailUsecase {
  final UserValidationEmailRepository _userValidationEmailRepository;

  UserValidationEmailImpUsecase(this._userValidationEmailRepository);

  @override
  Future<CuiaResponse> call(String code) async {
    return await _userValidationEmailRepository(code);
  }
}
