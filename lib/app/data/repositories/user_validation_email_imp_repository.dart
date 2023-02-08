// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_modular/flutter_modular.dart';
import '../../domain/repositories/user_validation_email_repository.dart';
import '../datasources/user_validation_email_datasource.dart';
import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';

final $UserValidationEmailImpRepository = Bind.lazySingleton(
  (i) => UserValidationEmailImpRepository(i.get()),
  export: true,
);

class UserValidationEmailImpRepository
    implements UserValidationEmailRepository {
  final UserValidationEmailDatasource _userValidationEmailDatasource;

  UserValidationEmailImpRepository(this._userValidationEmailDatasource);

  @override
  Future<CuiaResponse> call(String code) async {
    try {
      var res = await _userValidationEmailDatasource(code);
      return CuiaResponse(
        success: res["success"],
        data: res["data"],
      );
    } catch (e) {
      return CuiaResponse(success: false, data: e.toString());
    }
  }
}
