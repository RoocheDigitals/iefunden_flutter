class IIBSignInResponseModel {
  String accessToken;
  String refreshToken;
  String idToken;
  String message;

  IIBSignInResponseModel(
      this.accessToken, this.refreshToken, this.idToken, this.message);

  IIBSignInResponseModel.fromJson(Map<String, dynamic> json)
      : accessToken = json['AccessToken'] ?? "",
        refreshToken = json['RefreshToken'] ?? "",
        idToken = json['IdToken'] ?? "",
        message = json['message'] ?? "";
}

class IIBSignUpResponseModel {
  bool userConfirmed;
  String userSub;
  String message;

  IIBSignUpResponseModel(this.userConfirmed, this.userSub, this.message);

  IIBSignUpResponseModel.fromJson(Map<String, dynamic> json)
      : userConfirmed = json['UserConfirmed'] ?? false,
        userSub = json['UserSub'] ?? "",
        message = json['message'] ?? "";
}
