import 'package:ct_micro_commons_shared/ct_micro_commons_shared.dart';

abstract class UserRegisterUsecase {
  Future<CuiaResponse> call(String name, String email, String password);
}
