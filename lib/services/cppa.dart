import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:iefunden/commons/constants.dart';
import 'package:iefunden/models/cppa/request.dart';

class CPPAService {
  Future<dynamic> signIn(CPPASignInRequestModel data) async {
    var url = "${API_AUTH_BASE_URL}login/";
    log(url);
    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data.toJson()),
    );
    return jsonDecode(response.body);
  }

  Future<dynamic> signUp(CPPASignUpRequestModel data) async {
    var url = "${API_AUTH_BASE_URL}register/";
    log(url);
    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data.toJson()),
    );
    return jsonDecode(response.body);
  }
}
