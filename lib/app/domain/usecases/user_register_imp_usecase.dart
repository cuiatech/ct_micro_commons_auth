import 'package:flutter_modular/flutter_modular.dart';
import 'user_register_usecase.dart';
import '../repositories/user_register_repository.dart';
import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';

final $UserRegisterImpUsecase = Bind.lazySingleton(
  (i) => UserRegisterImpUsecase(i.get()),
  export: true,
);

class UserRegisterImpUsecase implements UserRegisterUsecase {
  final UserRegisterRepository _userRegisterRepository;

  UserRegisterImpUsecase(this._userRegisterRepository);

  @override
  Future<CuiaResponse> call(String name, String email, String password) async {
    return await _userRegisterRepository(name, email, password);
  }
}
