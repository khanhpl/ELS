import 'package:els_cus_mobile/core/models/WorkingScheduleDataModel.dart';

class WorkingScheduleModel {

  String successCode;
  dynamic errorCode;
  List<WorkingScheduleDataModel> data;
  WorkingScheduleModel({
    required this.successCode,
    this.errorCode,
    required this.data,
  });


  factory WorkingScheduleModel.fromJson(Map<String, dynamic> json) => WorkingScheduleModel(
    successCode: json["successCode"],
    errorCode: (json["errorCode"] != null) ? json["errorCode"] : "",
    data: List<WorkingScheduleDataModel>.from(json["data"].map((x) => WorkingScheduleDataModel.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "successCode": successCode,
    "errorCode": errorCode,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}