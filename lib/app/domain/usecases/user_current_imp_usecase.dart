// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_modular/flutter_modular.dart';
import 'user_current_usecase.dart';
import '../repositories/user_current_repository.dart';
import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';

final $UserCurrentImpUsecase = Bind.lazySingleton(
  (i) => UserCurrentImpUsecase(i.get()),
  export: true,
);

class UserCurrentImpUsecase implements UserCurrentUsecase {
  final UserCurrentRepository _userCurrentRepository;

  UserCurrentImpUsecase(this._userCurrentRepository);

  @override
  Future<CuiaResponse> call() async {
    return await _userCurrentRepository();
  }
}
