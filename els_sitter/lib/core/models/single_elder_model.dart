
import 'package:els_sitter/core/models/elder_data_model.dart';

class SingleElderModel {

  dynamic successCode;
  dynamic errorCode;
  ElderDataModel data;
  SingleElderModel({
    this.successCode,
    this.errorCode,
    required this.data,
  });

  factory SingleElderModel.fromJson(Map<dynamic, dynamic> json) => SingleElderModel(
      successCode: (json["successCode"] != null) ? json["successCode"]:"",
      errorCode: (json["errorCode"] != null) ? json["errorCode"] : "",
      data: ElderDataModel.fromJson(json["data"]),
  );


}