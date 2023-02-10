import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:iefunden/models/cppa_user.dart';

class CPPASignInController {
  TextEditingController companyName = TextEditingController();
  TextEditingController pin = TextEditingController();

  Future<void> signInUser(CPPASignInModel data) async {
    try {
      final result = await Amplify.Auth.signIn(
        username: data.username,
        password: data.password,
      );
    } on AuthException catch (e) {
      safePrint(e.message);
    }
  }
}
