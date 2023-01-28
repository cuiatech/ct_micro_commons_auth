import 'package:flutter_modular/flutter_modular.dart';
import '../../data/datasources/user_login_datasource.dart';
import 'package:flut_micro_commons_client_https/flut_micro_commons_client_https.dart';

final $UserLoginImpDatasource = Bind.lazySingleton(
  (i) => UserLoginImpDatasource(i()),
);

class UserLoginImpDatasource implements UserLoginDatasource {
  UserLoginImpDatasource(this._clientHttps);

  final ClientHttps _clientHttps;
  @override
  Future<Map<String, dynamic>> call(String email, String password) async {
    var res = await _clientHttps.post(
      '/oauth/token',
      data: {
        "grant_type": "password",
        "client_id": "985050c9-a833-4c55-97b3-eb0752be20e9",
        "client_secret": "jIQpIG1E5XXOZb7oiePlGIF71mL7MAzLpjxP8ndo",
        "scope": "",
        "username": email,
        "password": password,
      },
    );
    return res.data;
  }
}
