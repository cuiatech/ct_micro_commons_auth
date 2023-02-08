// ignore_for_file: depend_on_referenced_packages

import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';

abstract class UserSendValidationEmailRepository {
  Future<CuiaResponse> call(String redirect);
}
