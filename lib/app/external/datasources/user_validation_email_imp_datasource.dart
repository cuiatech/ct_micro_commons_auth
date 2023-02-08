// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_modular/flutter_modular.dart';
import '../../data/datasources/user_validation_email_datasource.dart';
import 'package:flut_micro_commons_client_https/flut_micro_commons_client_https.dart';

final $UserValidationEmailImpDatasource = Bind.lazySingleton(
  (i) => UserValidationEmailImpDatasource(i()),
  export: true,
);

class UserValidationEmailImpDatasource
    implements UserValidationEmailDatasource {
  UserValidationEmailImpDatasource(this._clientHttps);

  final ClientHttps _clientHttps;

  @override
  Future<Map<String, dynamic>> call(String code) async {
    var res = await _clientHttps.post(
      '/api/validate_key',
      data: {"code": code},
    );
    return res.data;
  }
}
