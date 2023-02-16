class EmailVerificationResponseModel {
  String accessToken;
  String refreshToken;
  String idToken;
  String message;

  EmailVerificationResponseModel(
      this.accessToken, this.refreshToken, this.idToken, this.message);

  EmailVerificationResponseModel.fromJson(Map<String, dynamic> json)
      : accessToken = json['AccessToken'] ?? "",
        refreshToken = json['RefreshToken'] ?? "",
        idToken = json['IdToken'] ?? "",
        message = json['message'] ?? "";
}
