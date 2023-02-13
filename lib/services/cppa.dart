import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:iefunden/commons/constants.dart';

class CPPAService {
  Future<dynamic> signIn(String email, String password) async {
    final response = await http.post(
      Uri.parse(API_AUTH_BASE_URL),
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
