import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:coffee_list_chopper/models/coffee.dart';

part 'api_client.chopper.dart';

@ChopperApi(baseUrl: 'https://api.sampleapis.com/')
abstract class ApiClient extends ChopperService {
  static ApiClient create() => _$ApiClient(ChopperClient());

  @Get(path: 'coffee/hot')
  Future<Response> getCoffee();
}
