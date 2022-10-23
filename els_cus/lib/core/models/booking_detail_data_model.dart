import 'package:els_cus_mobile/core/models/booking_data_model.dart';
import 'package:els_cus_mobile/core/models/service_data_model.dart';

class BookingDetailDataModel {

  int id;
  BookingDataModel booking;
  ServiceDataModel service;
  int duration;

  BookingDetailDataModel({
    required this.id,
    required this.booking,
    required this.service,
    required this.duration,
  });

  factory BookingDetailDataModel.fromJson(Map<String, dynamic> json) => BookingDetailDataModel(
    id: json["id"],
    booking: BookingDataModel.fromJson(json["booking"]),
    service: ServiceDataModel.fromJson(json["service"]),
    duration: json["duration"],
  );

}