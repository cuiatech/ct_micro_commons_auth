// ignore_for_file: depend_on_referenced_packages

import 'package:flut_micro_commons_auth/app/domain/models/dtos/user_dto_dto.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../domain/repositories/user_register_repository.dart';
import '../datasources/user_register_datasource.dart';
import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';

final $UserRegisterImpRepository = Bind.lazySingleton(
  (i) => UserRegisterImpRepository(i.get()),
  export: true,
);

class UserRegisterImpRepository implements UserRegisterRepository {
  final UserRegisterDatasource _userRegisterDatasource;

  UserRegisterImpRepository(this._userRegisterDatasource);

  @override
  Future<CuiaResponse> call(String name, String email, String password) async {
    try {
      var res = await _userRegisterDatasource(name, email, password);
      return CuiaResponse(
        success: res["success"],
        data: UserDto.fromJson(res["data"]),
      );
    } catch (e) {
      return CuiaResponse(
        success: false,
        message: e.toString(),
      );
    }
  }
}
