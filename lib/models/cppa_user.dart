class CPPAUserModel {
  String email;
  String password;
  String username;
  String phoneNumber;

  CPPAUserModel(this.email, this.password, this.username, this.phoneNumber);
}

class CPPAConfirmSignupModel {
  String username;
  String confirmCode;

  CPPAConfirmSignupModel(this.username, this.confirmCode);
}

class CPPASignInModel {
  String password;
  String username;

  CPPASignInModel(this.username, this.password);
}
