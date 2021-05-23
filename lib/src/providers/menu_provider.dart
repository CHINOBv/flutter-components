import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> options = [];

  Future<List<dynamic>> loadData() async {
    final res = await rootBundle.loadString('data/menu_opts.json');

    Map dataMap = json.decode(res);
    options = dataMap['rutas'];

    print(dataMap['rutas']);

    return options;
  }

}

final menuProvider = new _MenuProvider();