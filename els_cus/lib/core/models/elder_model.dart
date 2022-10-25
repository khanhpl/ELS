import 'package:els_cus_mobile/core/models/elder_data_model.dart';

class ElderModel {

  dynamic successCode;
  dynamic errorCode;
  List<ElderDataModel> data;
  ElderModel({
    this.successCode,
    this.errorCode,
    required this.data,
  });

  factory ElderModel.fromJson(Map<dynamic, dynamic> json) => ElderModel(
    successCode: (json["successCode"] != null) ? json["successCode"]:"",
    errorCode: (json["errorCode"] != null) ? json["errorCode"] : "",
    data: List<ElderDataModel>.from(json["data"].map((x) => ElderDataModel.fromJson(x)))
  );


}