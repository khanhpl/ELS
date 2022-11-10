import 'package:els_cus_mobile/core/models/customer_detail_data_model.dart';

class CustomerDetailModel {

  String successCode;
  dynamic errorCode;
  CustomerDetailDataModel data;

  CustomerDetailModel({
    required this.successCode,
    this.errorCode,
    required this.data,
  });

  factory CustomerDetailModel.fromJson(Map<String, dynamic> json) => CustomerDetailModel(
    successCode: (json["successCode"] != null)? json["successCode"]: "",
    errorCode: (json["errorCode"] != null) ? json["errorCode"] : "",
    data: CustomerDetailDataModel.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "successCode": successCode,
    "errorCode": errorCode,
    "data": data.toJson(),
  };
}