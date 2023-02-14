import 'package:iefunden/enums/pool_type.dart';

class IIBSignInRequestModel {
  String email;
  String password;
  PoolType type;

  IIBSignInRequestModel(this.email, this.password, {this.type = PoolType.IIB});
  Map<String, dynamic> toJson() => {
        "email": email, //ritz2jumola@gmail.com
        "password": password, //">tkZs8MU",
        "type": type
      };
}

class IIBSignUpRequestModel {
  String email;
  String password;
  String firstName;
  String lastName;
  String telephone;
  PoolType type;

  IIBSignUpRequestModel(
      this.email, this.password, this.firstName, this.lastName, this.telephone,
      {this.type = PoolType.IIB});

  Map<String, dynamic> toJson() => {
        "email": email, //ritz2jumola@gmail.com
        "password": password, //">tkZs8MU",
        "type": type.displayName,
        "firstName": firstName,
        "lastName": lastName,
        "telephone": telephone
      };
}
