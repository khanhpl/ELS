import 'package:els_cus_mobile/core/models/time.dart';

class AddWorkingTimesDtoList {

  String localDate;
  Time startTime;
  Time endTime;

  AddWorkingTimesDtoList({
    required this.localDate,
    required this.startTime,
    required this.endTime,
  });


  factory AddWorkingTimesDtoList.fromJson(Map<String, dynamic> json) => AddWorkingTimesDtoList(
    localDate: json["localDate"],
    startTime: Time.fromJson(json["startTime"]),
    endTime: Time.fromJson(json["endTime"]),
  );

  Map<String, dynamic> toJson() => {
    "localDate": localDate,
    "startTime": startTime.toJson(),
    "endTime": endTime.toJson(),
  };
}