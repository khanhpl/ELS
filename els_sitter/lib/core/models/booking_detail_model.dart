

import 'package:els_sitter/core/models/booking_detail_data_model.dart';

class BookingDetailModel {

  dynamic successCode;
  dynamic errorCode;
  List<BookingDetailDataModel> data;
  BookingDetailModel({
    this.successCode,
    this.errorCode,
    required this.data,
  });


  factory BookingDetailModel.fromJson(Map<String, dynamic> json) => BookingDetailModel(
    successCode: (json["successCode"] != null) ? json["successCode"] : "",
    errorCode: (json["errorCode"] != null) ? json["errorCode"] : "",
    data: List<BookingDetailDataModel>.from(json["data"].map((x) => BookingDetailDataModel.fromJson(x))),
  );

}