import 'package:iefunden/enums/pool_type.dart';

class CSOSignInRequestModel {
  String email;
  String password;
  PoolType type;

  CSOSignInRequestModel(this.email, this.password, {this.type = PoolType.CSO});
  Map<String, dynamic> toJson() => {
        "email": email, //ritz2jumola@gmail.com
        "password": password, //">tkZs8MU",
        "type": type.displayName,
      };
}

class CSOSignUpRequestModel {
  String email;
  String password;
  String firstName;
  String lastName;
  String telephone;
  PoolType type;

  CSOSignUpRequestModel(
      this.email, this.password, this.firstName, this.lastName, this.telephone,
      {this.type = PoolType.CSO});

  Map<String, dynamic> toJson() => {
        "email": email, //ritz2jumola@gmail.com
        "password": password, //">tkZs8MU",
        "type": type.displayName,
        "firstName": firstName,
        "lastName": lastName,
        "telephone": telephone
      };
}
