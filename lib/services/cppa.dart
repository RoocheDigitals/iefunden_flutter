import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:iefunden/commons/constants.dart';

class CPPAService {
  Future<dynamic> signIn(String email, String password) async {
    var url = "${API_AUTH_BASE_URL}login/";
    log(url);
    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        "email": email, //ritz2jumola@gmail.com
        "password": password, //">tkZs8MU",
        "type": "cppa"
      }),
    );
    return jsonDecode(response.body);
  }

  Future<dynamic> signUp(String email, String password) async {
    var url = "${API_AUTH_BASE_URL}register/";
    log(url);
    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        "email": email, //ritz2jumola@gmail.com
        "password": password, //">tkZs8MU",
        "type": "cppa"
      }),
    );
    return jsonDecode(response.body);
  }
}
