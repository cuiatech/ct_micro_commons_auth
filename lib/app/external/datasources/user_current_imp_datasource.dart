// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_modular/flutter_modular.dart';
import '../../data/datasources/user_current_datasource.dart';
import 'package:flut_micro_commons_client_https/flut_micro_commons_client_https.dart';

final $UserCurrentImpDatasource = Bind.lazySingleton(
  (i) => UserCurrentImpDatasource(i()),
  export: true,
);

class UserCurrentImpDatasource implements UserCurrentDatasource {
  UserCurrentImpDatasource(this._clientHttps);

  final ClientHttps _clientHttps;
  @override
  Future<Map<String, dynamic>> call() async {
    try {
      var res = await _clientHttps.get('/api/user');

      return res.data;
    } catch (e) {
      rethrow;
    }
  }
}
