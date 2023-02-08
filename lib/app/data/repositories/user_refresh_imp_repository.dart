// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_modular/flutter_modular.dart';
import '../../domain/models/dtos/user_dto_dto.dart';
import '../../domain/repositories/user_refresh_repository.dart';
import '../datasources/user_refresh_datasource.dart';
import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';

final $UserRefreshImpRepository = Bind.lazySingleton(
  (i) => UserRefreshImpRepository(i.get()),
  export: true,
);

class UserRefreshImpRepository implements UserRefreshRepository {
  final UserRefreshDatasource _userRefreshDatasource;

  UserRefreshImpRepository(this._userRefreshDatasource);

  @override
  Future<CuiaResponse> call() async {
    try {
      var res = await _userRefreshDatasource();
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
