
import 'package:els_sitter/core/models/booking_data_model.dart';

class BookingModel {

  dynamic successCode;
  dynamic errorCode;
  List<BookingDataModel> data;

  BookingModel({
    this.successCode,
    this.errorCode,
    required this.data,
  });

  factory BookingModel.fromJson(Map<String, dynamic> json) => BookingModel(
    successCode: (json["successCode"] != null) ? json["successCode"] : "",
    errorCode: (json["errorCode"] != null) ? json["errorCode"] : "",
    data: List<BookingDataModel>.from(json["data"].map((x) => BookingDataModel.fromJson(x))),
  );


}