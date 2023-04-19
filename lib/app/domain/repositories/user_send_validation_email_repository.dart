import 'package:ct_micro_commons_shared/ct_micro_commons_shared.dart';

abstract class UserSendValidationEmailRepository {
  Future<CuiaResponse> call(String redirect);
}
