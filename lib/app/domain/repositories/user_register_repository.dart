import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';

abstract class UserRegisterRepository {
  Future<CuiaResponse> call(String name, String email, String password);
}
