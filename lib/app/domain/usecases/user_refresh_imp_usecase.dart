import 'package:flutter_modular/flutter_modular.dart';
import 'user_refresh_usecase.dart';
import '../repositories/user_refresh_repository.dart';
import 'package:ct_micro_commons_shared/ct_micro_commons_shared.dart';

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
