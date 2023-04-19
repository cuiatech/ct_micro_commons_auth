import 'package:ct_micro_commons_shared/ct_micro_commons_shared.dart';

abstract class UserLoginRepository {
  Future<CuiaResponse> call(String email, String password);
}
