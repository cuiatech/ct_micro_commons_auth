import 'package:flutter_modular/flutter_modular.dart';
import '../../domain/repositories/user_update_password_repository.dart';
import '../datasources/user_update_password_datasource.dart';
import 'package:ct_micro_commons_shared/ct_micro_commons_shared.dart';

final $UserUpdatePasswordImpRepository = Bind.lazySingleton(
  (i) => UserUpdatePasswordImpRepository(i.get()),
  export: true,
);

class UserUpdatePasswordImpRepository implements UserUpdatePasswordRepository {
  final UserUpdatePasswordDatasource _userUpdatePasswordDatasource;

  UserUpdatePasswordImpRepository(this._userUpdatePasswordDatasource);

  @override
  Future<CuiaResponse> call(String code, String newPassword) async {
    try {
      var res = await _userUpdatePasswordDatasource(code, newPassword);
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
