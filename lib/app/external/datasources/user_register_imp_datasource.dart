import 'package:flutter_modular/flutter_modular.dart';
import '../../data/datasources/user_register_datasource.dart';
import 'package:ct_micro_commons_client_https/ct_micro_commons_client_https.dart';

final $UserRegisterImpDatasource = Bind.lazySingleton(
  (i) => UserRegisterImpDatasource(i()),
  export: true,
);

class UserRegisterImpDatasource implements UserRegisterDatasource {
  UserRegisterImpDatasource(this._clientHttps);

  final ClientHttps _clientHttps;

  @override
  Future<Map<String, dynamic>> call(
      String name, String email, String password) async {
    var res = await _clientHttps.post(
      '/api/register',
      data: {"name": name, "email": email, "password": password},
    );
    return res.data;
  }
}
