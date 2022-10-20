import 'package:els_cus_mobile/core/models/service_data_model.dart';

class ServiceModel {

  dynamic successCode;
  dynamic errorCode;
  List<ServiceDataModel> data;
  ServiceModel({
    this.successCode,
    this.errorCode,
    required this.data,
  });


  factory ServiceModel.fromJson(Map<String, dynamic> json) => ServiceModel(
    successCode: (json["successCode"] != null)? json["successCode"]:"",
    errorCode: (json["errorCode"] != null) ? json["errorCode"] : "",
    data: List<ServiceDataModel>.from(json["data"].map((x) => ServiceDataModel.fromJson(x))),
  );


}