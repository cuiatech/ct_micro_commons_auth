import 'package:ct_micro_commons_shared/ct_micro_commons_shared.dart';

abstract class UserForgotPasswordRepository {
  Future<CuiaResponse> call(String email, String redirect);
}
