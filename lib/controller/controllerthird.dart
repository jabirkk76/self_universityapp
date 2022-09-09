import 'package:http/http.dart' as http;

import 'dart:convert';

import 'package:self_universityapp/model/modelthird.dart';

class ControllerClassThird {
  Future<ModelThird> functionthird() async {
    var url = 'https://randomuser.me/api/';
    var urlvar = await http.get(Uri.parse(url));
    ModelThird jsondecode;

    var response = jsonDecode(urlvar.body);
    if (urlvar.statusCode == 200) {}
    jsondecode = ModelThird.fromJson(response);
    return jsondecode;
  }
}
