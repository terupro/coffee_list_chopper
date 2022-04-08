import 'dart:convert';

import 'package:coffee_list_chopper/models/coffee.dart';
import 'package:coffee_list_chopper/services/api_client.dart';

class Repository {
  static Future<List<Coffee>> getCoffee() {
    return ApiClient.create().getCoffee().then(
      (value) {
        final list = json.decode(value.body) as List<dynamic>;
        final result = List<Coffee>.from(list.map((e) => Coffee.fromJson(e)));
        return result;
      },
    );
  }
}
