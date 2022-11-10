import 'package:els_sitter/core/models/sitter_detail_data_model.dart';

class SitterDetailModel {

  String successCode;
  dynamic errorCode;
  SitterDetailDataModel data;

  SitterDetailModel({
    required this.successCode,
    this.errorCode,
    required this.data,
  });

  factory SitterDetailModel.fromJson(Map<String, dynamic> json) => SitterDetailModel(
    successCode: (json["successCode"] != null)? json["successCode"]: "",
    errorCode: (json["errorCode"] != null) ? json["errorCode"] : "",
    data: SitterDetailDataModel.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "successCode": successCode,
    "errorCode": errorCode,
    "data": data.toJson(),
  };
}