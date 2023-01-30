import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';

abstract class UserForgotPasswordUsecase {
  Future<CuiaResponse> call(String email, String redirect);
}
