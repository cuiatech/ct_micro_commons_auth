import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';

abstract class UserLoginRepository {
  Future<CuiaResponse> call(String email, String password);
}
