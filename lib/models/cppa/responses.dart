class CPPASignInResponseModel {
  String accessToken;
  String refreshToken;
  String idToken;
  String message;

  CPPASignInResponseModel(
      this.accessToken, this.refreshToken, this.idToken, this.message);

  CPPASignInResponseModel.fromJson(Map<String, dynamic> json)
      : accessToken = json['AccessToken'] ?? "",
        refreshToken = json['RefreshToken'] ?? "",
        idToken = json['IdToken'] ?? "",
        message = json['message'] ?? "";
}

class CPPASignUpResponseModel {
  bool userConfirmed;
  String userSub;
  String message;

  CPPASignUpResponseModel(this.userConfirmed, this.userSub, this.message);

  CPPASignUpResponseModel.fromJson(Map<String, dynamic> json)
      : userConfirmed = json['UserConfirmed'] ?? false,
        userSub = json['UserSub'] ?? "",
        message = json['message'] ?? "";
}
