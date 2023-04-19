import 'package:ct_micro_commons_auth/app/domain/models/dtos/user_dto_dto.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../domain/repositories/user_current_repository.dart';
import '../datasources/user_current_datasource.dart';
import 'package:ct_micro_commons_shared/ct_micro_commons_shared.dart';

final $UserCurrentImpRepository = Bind.lazySingleton(
  (i) => UserCurrentImpRepository(i.get()),
  export: true,
);

class UserCurrentImpRepository implements UserCurrentRepository {
  final UserCurrentDatasource _userCurrentDatasource;

  UserCurrentImpRepository(this._userCurrentDatasource);

  @override
  Future<CuiaResponse> call() async {
    try {
      var res = await _userCurrentDatasource();
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
