class CSOSignInResponseModel {
  String accessToken;
  String refreshToken;
  String idToken;
  String message;

  CSOSignInResponseModel(
      this.accessToken, this.refreshToken, this.idToken, this.message);

  CSOSignInResponseModel.fromJson(Map<String, dynamic> json)
      : accessToken = json['AccessToken'] ?? "",
        refreshToken = json['RefreshToken'] ?? "",
        idToken = json['IdToken'] ?? "",
        message = json['message'] ?? "";
}

class CSOSignUpResponseModel {
  bool userConfirmed;
  String userSub;
  String message;

  CSOSignUpResponseModel(this.userConfirmed, this.userSub, this.message);

  CSOSignUpResponseModel.fromJson(Map<String, dynamic> json)
      : userConfirmed = json['UserConfirmed'] ?? false,
        userSub = json['UserSub'] ?? "",
        message = json['message'] ?? "";
}
