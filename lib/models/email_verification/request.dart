import 'package:iefunden/enums/pool_type.dart';

class EmailVerificationRequestModel {
  String email;
  String code;
  PoolType type;

  EmailVerificationRequestModel(this.email, this.code,
      {this.type = PoolType.CPPA});
  Map<String, dynamic> toJson() => {
        "email": email, //ritz2jumola@gmail.com
        "code": code, //">tkZs8MU",
        "type": type.displayName,
      };
}
