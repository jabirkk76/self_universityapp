import 'package:http/http.dart' as http;

import 'dart:convert';

import 'package:self_universityapp/model/modelsecond.dart';

class ControllerClassSecond {
  Future<ModelSecond> functionSecond() async {
    var url = 'https://api.coindesk.com/v1/bpi/currentprice.json';
    var urlvar = await http.get(Uri.parse(url));
    ModelSecond jsondecode;

    var response = jsonDecode(urlvar.body);
    if (urlvar.statusCode == 200) {}
    jsondecode = ModelSecond.fromJson(response);
    return jsondecode;
  }
}
