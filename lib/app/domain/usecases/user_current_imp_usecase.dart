import 'package:flutter_modular/flutter_modular.dart';
import 'user_current_usecase.dart';
import '../repositories/user_current_repository.dart';
import 'package:ct_micro_commons_shared/ct_micro_commons_shared.dart';

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
