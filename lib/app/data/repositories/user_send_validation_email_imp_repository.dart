// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_modular/flutter_modular.dart';
import '../../domain/repositories/user_send_validation_email_repository.dart';
import '../datasources/user_send_validation_email_datasource.dart';
import 'package:ct_micro_commons_shared/ct_micro_commons_shared.dart';

final $UserSendValidationEmailImpRepository = Bind.lazySingleton(
  (i) => UserSendValidationEmailImpRepository(i.get()),
  export: true,
);

class UserSendValidationEmailImpRepository
    implements UserSendValidationEmailRepository {
  final UserSendValidationEmailDatasource _userSendValidationEmailDatasource;

  UserSendValidationEmailImpRepository(this._userSendValidationEmailDatasource);

  @override
  Future<CuiaResponse> call(String redirect) async {
    try {
      var res = await _userSendValidationEmailDatasource(redirect);
      return CuiaResponse(
        success: res["success"],
        data: res["data"],
      );
    } catch (e) {
      return CuiaResponse(
        success: false,
        message: e.toString(),
      );
    }
  }
}
