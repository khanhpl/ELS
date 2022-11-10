import 'package:els_cus_mobile/core/models/add_booking_service_request_dto.dart';
import 'package:els_cus_mobile/core/models/add_working_times_dto_list.dart';

class BookingFormModel {
  String address;
  String description;
  int elderId;
  String place;
  String email;
  double totalPrice;
  List<AddWorkingTimesDtoList> addWorkingTimesDtoList;
  List<AddBookingServiceRequestDto> addBookingServiceRequestDtos;

  BookingFormModel({
    required this.address,
    required this.description,
    required this.elderId,
    required this.place,
    required this.email,
    required this.totalPrice,
    required this.addWorkingTimesDtoList,
    required this.addBookingServiceRequestDtos,
  });



  factory BookingFormModel.fromJson(Map<String, dynamic> json) => BookingFormModel(
    address: json["address"],
    description: json["description"],
    elderId: json["elderId"],
    place: json["place"],
    email: json["email"],
    totalPrice: json["totalPrice"],
    addWorkingTimesDtoList: List<AddWorkingTimesDtoList>.from(json["addWorkingTimesDTOList"].map((x) => AddWorkingTimesDtoList.fromJson(x))),
    addBookingServiceRequestDtos: List<AddBookingServiceRequestDto>.from(json["addBookingServiceRequestDTOS"].map((x) => AddBookingServiceRequestDto.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "address": address,
    "description": description,
    "elderId": elderId,
    "place": place,
    "email": email,
    "totalPrice": totalPrice,
    "addWorkingTimesDTOList": List<dynamic>.from(addWorkingTimesDtoList.map((x) => x.toJson())),
    "addBookingServiceRequestDTOS": List<dynamic>.from(addBookingServiceRequestDtos.map((x) => x.toJson())),
  };
}