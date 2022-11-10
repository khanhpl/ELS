

import 'package:els_sitter/core/models/cus_data_model.dart';
import 'package:els_sitter/core/models/elder_data_model.dart';

class BookingDataModel {

  int id;
  String name;
  String description;
  double totalPrice;
  DateTime startDateTime;
  DateTime endDateTime;
  ElderDataModel? elder;
  CusDataModel? cus;
  String address;
  String place;
  String status;
  dynamic payment;
  BookingDataModel({
    required this.id,
    required this.name,
    required this.description,
    required this.totalPrice,
    required this.startDateTime,
    required this.endDateTime,
    required this.elder,
    this.cus,
    required this.address,
    required this.place,
    required this.status,
    this.payment,
  });


  factory BookingDataModel.fromJson(Map<String, dynamic> json) => BookingDataModel(
    id: json["id"],
    name: json["name"],
    description: json["description"],
    totalPrice: json["totalPrice"],
    startDateTime: DateTime.parse(json["startDateTime"]),
    endDateTime: DateTime.parse(json["endDateTime"]),
    elder: (json["elder"] != null)?ElderDataModel.fromJson(json["elder"]):null,
    cus: (json["user"] == null) ? null : CusDataModel.fromJson(json["user"]),
    address: json["address"],
    place: json["place"],
    status: json["status"],
    payment: json["payment"],
  );


}