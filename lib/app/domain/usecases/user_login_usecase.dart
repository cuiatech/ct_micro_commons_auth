import 'package:ct_micro_commons_shared/ct_micro_commons_shared.dart';

abstract class UserLoginUsecase {
  Future<CuiaResponse> call(String email, String password);
}
