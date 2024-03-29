import 'package:ct_micro_commons_shared/ct_micro_commons_shared.dart';

abstract class UserUpdatePasswordUsecase {
  Future<CuiaResponse> call(String code, String newPassword);
}
