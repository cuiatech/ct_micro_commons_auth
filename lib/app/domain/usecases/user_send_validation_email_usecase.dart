import 'package:ct_micro_commons_shared/ct_micro_commons_shared.dart';

abstract class UserSendValidationEmailUsecase {
  Future<CuiaResponse> call(String redirect);
}
