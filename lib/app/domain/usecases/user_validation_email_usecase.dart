import 'package:ct_micro_commons_shared/ct_micro_commons_shared.dart';

abstract class UserValidationEmailUsecase {
  Future<CuiaResponse> call(String code);
}
