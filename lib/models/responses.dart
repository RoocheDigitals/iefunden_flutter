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
  String accessToken;
  String refreshToken;
  String idToken;
  String message;

  CPPASignUpResponseModel(
      this.accessToken, this.refreshToken, this.idToken, this.message);

  CPPASignUpResponseModel.fromJson(Map<String, dynamic> json)
      : accessToken = json['AccessToken'] ?? "",
        refreshToken = json['RefreshToken'] ?? "",
        idToken = json['IdToken'] ?? "",
        message = json['message'] ?? "";
}
