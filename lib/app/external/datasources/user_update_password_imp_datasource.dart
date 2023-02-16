// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_modular/flutter_modular.dart';
import '../../data/datasources/user_update_password_datasource.dart';
import 'package:ct_micro_commons_client_https/ct_micro_commons_client_https.dart';

final $UserUpdatePasswordImpDatasource = Bind.lazySingleton(
  (i) => UserUpdatePasswordImpDatasource(i()),
  export: true,
);

class UserUpdatePasswordImpDatasource implements UserUpdatePasswordDatasource {
  UserUpdatePasswordImpDatasource(this._clientHttps);

  final ClientHttps _clientHttps;

  @override
  Future<Map<String, dynamic>> call(String code, String newPassword) async {
    try {
      var res = await _clientHttps.put(
        '/api/update_password',
        data: {
          "code": code,
          "password": newPassword,
        },
      );

      return res.data;
    } catch (e) {
      rethrow;
    }
  }
}
