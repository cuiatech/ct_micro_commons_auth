// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_modular/flutter_modular.dart';
import '../../data/datasources/user_forgot_password_datasource.dart';
import 'package:ct_micro_commons_client_https/ct_micro_commons_client_https.dart';

final $UserForgotPasswordImpDatasource = Bind.lazySingleton(
  (i) => UserForgotPasswordImpDatasource(i()),
  export: true,
);

class UserForgotPasswordImpDatasource implements UserForgotPasswordDatasource {
  UserForgotPasswordImpDatasource(this._clientHttps);

  final ClientHttps _clientHttps;

  @override
  Future<Map<String, dynamic>> call(String email, String redirect) async {
    try {
      var res = await _clientHttps.post(
        '/api/forgot_password',
        data: {
          "email": email,
          "redirect_to": redirect,
        },
      );

      return res.data;
    } catch (e) {
      rethrow;
    }
  }
}
