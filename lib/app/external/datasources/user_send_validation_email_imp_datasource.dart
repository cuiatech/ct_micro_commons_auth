import 'package:flutter_modular/flutter_modular.dart';
import '../../data/datasources/user_send_validation_email_datasource.dart';
import 'package:ct_micro_commons_client_https/ct_micro_commons_client_https.dart';

final $UserSendValidationEmailImpDatasource = Bind.lazySingleton(
  (i) => UserSendValidationEmailImpDatasource(i()),
  export: true,
);

class UserSendValidationEmailImpDatasource
    implements UserSendValidationEmailDatasource {
  UserSendValidationEmailImpDatasource(this._clientHttps);

  final ClientHttps _clientHttps;

  @override
  Future<Map<String, dynamic>> call(String redirect) async {
    var res = await _clientHttps.post(
      '/api/send_validate_key',
      data: {"url_activate": redirect},
    );
    return res.data;
  }
}
