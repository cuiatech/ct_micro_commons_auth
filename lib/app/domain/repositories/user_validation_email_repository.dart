import 'package:ct_micro_commons_shared/ct_micro_commons_shared.dart';

abstract class UserValidationEmailRepository {
  Future<CuiaResponse> call(String code);
}
