import 'dart:convert';

import 'package:flutter_modular/flutter_modular.dart';
import '../../data/datasources/user_refresh_datasource.dart';
import 'package:ct_micro_commons_client_https/ct_micro_commons_client_https.dart';
import 'package:ct_micro_commons_shared/ct_micro_commons_shared.dart';

final $UserRefreshImpDatasource = Bind.lazySingleton(
  (i) => UserRefreshImpDatasource(i()),
  export: true,
);

class UserRefreshImpDatasource implements UserRefreshDatasource {
  UserRefreshImpDatasource(this._clientHttps);

  final ClientHttps _clientHttps;
  @override
  Future<Map<String, dynamic>> call() async {
    try {
      var res = await _clientHttps.get('/api/user');
      await LocalStorage.set('user', json.encode(res.data["data"]));
      return res.data;
    } catch (e) {
      rethrow;
    }
  }
}
