
import 'package:els_sitter/core/models/user_data_model.dart';

class UserModel {
  var successCode;
  var errorCode;
  UserDataModel data;
  UserModel(
      this.successCode,
      this.errorCode,
      this.data,
      );

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      json['successCode'],
      json['errorCode'],
      json['data'],
    );
  }
}
