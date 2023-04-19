import 'dart:convert';

import 'package:flutter_modular/flutter_modular.dart';
import '../../data/datasources/user_current_datasource.dart';
import 'package:ct_micro_commons_client_https/ct_micro_commons_client_https.dart';
import 'package:ct_micro_commons_shared/ct_micro_commons_shared.dart';

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
      var storage = await LocalStorage.get('user');
      var user = storage != null ? json.decode(storage) : null;

      if (user != null) {
        return {"success": true, "data": user};
      } else {
        var res = await _clientHttps.get('/api/user');
        await LocalStorage.set('user', json.encode(res.data["data"]));
        return res.data;
      }
    } catch (e) {
      rethrow;
    }
  }
}
