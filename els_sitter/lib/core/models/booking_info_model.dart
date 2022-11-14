import 'package:els_sitter/core/models/booking_data_model.dart';

class BookingInfoModel {
  String successCode;
  dynamic errorCode;
  List<BookingDataModel> data;

  BookingInfoModel({
    required this.successCode,
    this.errorCode,
    required this.data,
  });

  factory BookingInfoModel.fromJson(Map<String, dynamic> json) =>
      BookingInfoModel(
        successCode: (json["successCode"] != null) ? json["successCode"] : "",
        errorCode: (json["errorCode"] != null) ? json["errorCode"] : "",
        data: List<BookingDataModel>.from(
            json["data"].map((x) => BookingDataModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "successCode": successCode,
        "errorCode": errorCode,
        "data": List<BookingDataModel>.from(data.map((x) => x.toJson())),
      };
}
