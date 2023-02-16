import 'package:iefunden/models/email_verification/request.dart';
import 'package:iefunden/models/email_verification/responses.dart';
import 'package:iefunden/services/cppa.dart';
import 'package:iefunden/services/email.dart';
import 'package:otp_text_field/otp_field.dart';

class EmailVerificationController {
  static final EmailVerificationController _singleton =
      EmailVerificationController._internal();

  factory EmailVerificationController() {
    return _singleton;
  }

  String emailValue = "";
  EmailVerificationController._internal();

  final _emailService = EmailService();
  // login
  OtpFieldController verificationPin = OtpFieldController();

  Future<EmailVerificationResponseModel> verifyUser() async {
    var request = EmailVerificationRequestModel(
      emailValue,
      verificationPin.toString(),
    );
    final result = await _emailService.verifyEmail(request);
    final response = EmailVerificationResponseModel.fromJson(result);
    return response;
  }
}
