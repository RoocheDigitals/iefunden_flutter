import 'package:iefunden/enums/pool_type.dart';

class CPPASignInRequestModel {
  String email;
  String password;
  PoolType type;

  CPPASignInRequestModel(this.email, this.password,
      {this.type = PoolType.CPPA});
  Map<String, dynamic> toJson() => {
        "email": email, //ritz2jumola@gmail.com
        "password": password, //">tkZs8MU",
        "type": type.displayName,
      };
}

class CPPASignUpRequestModel {
  String email;
  String password;
  String firstName;
  String lastName;
  String telephone;
  PoolType type;

  CPPASignUpRequestModel(
      this.email, this.password, this.firstName, this.lastName, this.telephone,
      {this.type = PoolType.CPPA});

  Map<String, dynamic> toJson() => {
        "email": email, //ritz2jumola@gmail.com
        "password": password, //">tkZs8MU",
        "type": type.displayName,
        "firstName": firstName,
        "lastName": lastName,
        "telephone": telephone
      };
}
