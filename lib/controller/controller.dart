import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:self_universityapp/model/model.dart';

class ControllerClass {
  Future<List<Model>?> function() async {
    var url = 'http://universities.hipolabs.com/search?country=United+States';
    var urlvar = await http.get(Uri.parse(url));

    var response = jsonDecode(urlvar.body);
    if (urlvar.statusCode == 200) {
      List<Model> a = [];
      response.forEach((e) {
        a.add(Model.fromJson(e));
      });
      return a;
    }
    return null;
  }
}
