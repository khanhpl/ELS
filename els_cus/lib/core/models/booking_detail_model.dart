import 'package:els_cus_mobile/core/models/booking_detail_data_model.dart';

class BookingDetailModel {

  dynamic successCode;
  dynamic errorCode;
  BookingDetailDataModel data;
  BookingDetailModel({
    this.successCode,
    this.errorCode,
    required this.data,
  });


  factory BookingDetailModel.fromJson(Map<String, dynamic> json) => BookingDetailModel(
    successCode: (json["successCode"] != null) ? json["successCode"] : "",
    errorCode: (json["errorCode"] != null) ? json["errorCode"] : "",
    data: BookingDetailDataModel.fromJson(json["data"]),
  );

}