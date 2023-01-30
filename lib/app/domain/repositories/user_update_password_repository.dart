import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';

abstract class UserUpdatePasswordRepository {
  Future<CuiaResponse> call(String code, String newPassword);
}
