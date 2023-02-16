// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_modular/flutter_modular.dart';
import '../../domain/repositories/user_login_repository.dart';
import '../datasources/user_login_datasource.dart';
import 'package:ct_micro_commons_shared/ct_micro_commons_shared.dart';

final $UserLoginImpRepository = Bind.lazySingleton(
  (i) => UserLoginImpRepository(i.get()),
  export: true,
);

class UserLoginImpRepository implements UserLoginRepository {
  final UserLoginDatasource _userLoginDatasource;

  UserLoginImpRepository(this._userLoginDatasource);

  @override
  Future<CuiaResponse> call(String email, String password) async {
    try {
      var res = await _userLoginDatasource(email, password);
      return CuiaResponse(
        success: true,
        data: res,
      );
    } catch (e) {
      return CuiaResponse(
        success: false,
        message: e.toString(),
      );
    }
  }
}
