
import 'package:els_sitter/core/models/sitter_data_model.dart';

class BookingDataModel {

  int id;
  String name;
  String description;
  double totalPrice;
  var startDateTime;
  var endDateTime;
  int elderId;
  SitterDataModel sitter;
  String address;
  String place;
  dynamic status;
  dynamic payment;
  BookingDataModel({
    required this.id,
    required this.name,
    required this.description,
    required this.totalPrice,
    required this.startDateTime,
    required this.endDateTime,
    required this.elderId,
    required this.sitter,
    required this.address,
    required this.place,
    this.status,
    this.payment,
  });


  factory BookingDataModel.fromJson(Map<String, dynamic> json) => BookingDataModel(
    id: json["id"],
    name: json["name"],
    description: json["description"],
    totalPrice: json["totalPrice"],
    // startDateTime: json["startDateTime"],
    // endDateTime: json["endDateTime"],
    startDateTime: DateTime.parse(json["startDateTime"]),
    endDateTime: DateTime.parse(json["endDateTime"]),
    elderId: json["elderId"],
    sitter: SitterDataModel.fromJson(json["sitter"]),
    address: json["address"],
    place: json["place"],
    status: json["status"],
    payment: (json["payment"] != null)? json["payment"] : "",
  );


}