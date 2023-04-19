import 'package:flutter_modular/flutter_modular.dart';
import '../../domain/repositories/user_forgot_password_repository.dart';
import '../datasources/user_forgot_password_datasource.dart';
import 'package:ct_micro_commons_shared/ct_micro_commons_shared.dart';

final $UserForgotPasswordImpRepository = Bind.lazySingleton(
  (i) => UserForgotPasswordImpRepository(i.get()),
  export: true,
);

class UserForgotPasswordImpRepository implements UserForgotPasswordRepository {
  final UserForgotPasswordDatasource _userForgotPasswordDatasource;

  UserForgotPasswordImpRepository(this._userForgotPasswordDatasource);

  @override
  Future<CuiaResponse> call(String email, String redirect) async {
    try {
      var res = await _userForgotPasswordDatasource(email, redirect);
      return CuiaResponse(
        success: res["success"],
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
