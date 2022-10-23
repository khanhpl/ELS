
import 'package:els_sitter/core/models/user_data_model.dart';

class UserModel {

  String successCode;
  dynamic errorCode;
  UserDataModel data;

  UserModel({
    required this.successCode,
    this.errorCode,
    required this.data,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    successCode: json["successCode"],
    errorCode: (json["errorCode"] != null)? json["errorCode"] : "",
    data: UserDataModel.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "successCode": successCode,
    "errorCode": errorCode,
    "data": data.toJson(),
  };
}