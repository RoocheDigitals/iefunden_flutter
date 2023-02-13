import 'dart:convert';

import 'package:http/http.dart' as http;

class CPPAService {
  Future<dynamic> signIn(String email, String password) async {
    final response = await http.post(
      Uri.parse(
        'https://ylhuwjxxu3.execute-api.us-east-1.amazonaws.com/dev/auth/login/',
      ),
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
