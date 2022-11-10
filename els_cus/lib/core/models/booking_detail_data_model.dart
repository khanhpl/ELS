import 'package:els_cus_mobile/core/models/booking_data_model.dart';
import 'package:els_cus_mobile/core/models/service_data_model.dart';

class BookingDetailDataModel {
  int id;
  String serviceName;
  int duration;
  double price;

  BookingDetailDataModel(
      {required this.id,
      required this.serviceName,
      required this.duration,
      required this.price});

  factory BookingDetailDataModel.fromJson(Map<String, dynamic> json) =>
      BookingDetailDataModel(
        id: json["id"],
        serviceName: json["serviceName"],
        duration: json["duration"],
        price: json["price"],
      );
}
