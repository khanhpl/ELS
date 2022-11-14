
import 'package:els_cus_mobile/core/models/sitter_detail_data_model.dart';


class SingleSitterModel {

  String successCode;
  dynamic errorCode;
  SitterDetailDataModel data;

  SingleSitterModel({
    required this.successCode,
    this.errorCode,
    required this.data,
  });

  factory SingleSitterModel.fromJson(Map<String, dynamic> json) => SingleSitterModel(
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