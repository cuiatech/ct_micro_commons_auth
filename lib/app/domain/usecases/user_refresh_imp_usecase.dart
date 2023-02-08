// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_modular/flutter_modular.dart';
import 'user_refresh_usecase.dart';
import '../repositories/user_refresh_repository.dart';
import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';

final $UserRefreshImpUsecase = Bind.lazySingleton(
  (i) => UserRefreshImpUsecase(i.get()),
  export: true,
);

class UserRefreshImpUsecase implements UserRefreshUsecase {
  final UserRefreshRepository _userRefreshRepository;

  UserRefreshImpUsecase(this._userRefreshRepository);

  @override
  Future<CuiaResponse> call() async {
    return await _userRefreshRepository();
  }
}
