// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_modular/flutter_modular.dart';
import '../../data/datasources/user_login_datasource.dart';
import 'package:flut_micro_commons_client_https/flut_micro_commons_client_https.dart';
import 'package:flut_micro_commons_dependencies/flut_micro_commons_dependencies.dart';
import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';

final $UserLoginImpDatasource = Bind.lazySingleton(
  (i) => UserLoginImpDatasource(i()),
  export: true,
);

class UserLoginImpDatasource implements UserLoginDatasource {
  UserLoginImpDatasource(this._clientHttps);

  final ClientHttps _clientHttps;
  @override
  Future<Map<String, dynamic>> call(String email, String password) async {
    try {
      var env = Modular.get<EnvParams>();
      var res = await _clientHttps.post(
        '/oauth/token',
        data: {
          "grant_type": "password",
          "client_id": env.clientId,
          "client_secret": env.clientSecret,
          "scope": "",
          "username": email,
          "password": password,
        },
      );

      await LocalStorage.set('access_token', res.data['access_token']);
      await LocalStorage.set('refresh_token', res.data['refresh_token']);

      return res.data;
    } catch (e) {
      rethrow;
    }
  }
}
