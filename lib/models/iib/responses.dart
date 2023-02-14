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
  String accessToken;
  String refreshToken;
  String idToken;
  String message;

  IIBSignUpResponseModel(
      this.accessToken, this.refreshToken, this.idToken, this.message);

  IIBSignUpResponseModel.fromJson(Map<String, dynamic> json)
      : accessToken = json['AccessToken'] ?? "",
        refreshToken = json['RefreshToken'] ?? "",
        idToken = json['IdToken'] ?? "",
        message = json['message'] ?? "";
}
