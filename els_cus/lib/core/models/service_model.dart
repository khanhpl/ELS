import 'package:els_cus_mobile/core/models/service_data_model.dart';

class ServiceModel {

  String successCode;
  dynamic errorCode;
  List<ServiceDataModel> data;
  ServiceModel({
    required this.successCode,
    this.errorCode,
    required this.data,
  });


  factory ServiceModel.fromJson(Map<String, dynamic> json) => ServiceModel(
    successCode: json["successCode"],
    errorCode: (json["errorCode"] != null)? json["errorCode"]:"",
    data: List<ServiceDataModel>.from(json["data"].map((x) => ServiceDataModel.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "successCode": successCode,
    "errorCode": errorCode,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}