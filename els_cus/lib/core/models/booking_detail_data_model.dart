import 'package:els_cus_mobile/core/models/add_working_times_dto_list.dart';
import 'package:els_cus_mobile/core/models/booking_service_detail_response_dto.dart';
import 'package:els_cus_mobile/core/models/elder_data_model.dart';
import 'package:els_cus_mobile/core/models/sitter_response_dto.dart';

class BookingDetailDataModel {

  String address;
  String description;
  ElderDataModel elder;
  String place;
  SitterDto sitterDto;
  double totalPrice;
  double deposit;
  String status;
  dynamic bookingImgResponseDtoList;
  List<AddWorkingTimesDtoListElement> workingTimeResponseDtoList;
  List<BookingDetailResponseDtoList> bookingDetailResponseDtoList;
  dynamic paymentResponseDto;
  BookingDetailDataModel({
    required this.address,
    required this.description,
    required this.elder,
    required this.place,
    required this.sitterDto,
    required this.totalPrice,
    required this.deposit,
    required this.status,
    this.bookingImgResponseDtoList,
    required this.workingTimeResponseDtoList,
    required this.bookingDetailResponseDtoList,
    this.paymentResponseDto,
  });



  factory BookingDetailDataModel.fromJson(Map<String, dynamic> json) => BookingDetailDataModel(
    address: json["address"],
    description: json["description"],
    elder: ElderDataModel.fromJson(json["elder"]),
    place: json["place"],
    sitterDto: SitterDto.fromJson(json["sitterDTO"]),
    totalPrice: json["totalPrice"],
    deposit: json["deposit"],
    status: json["status"],
    bookingImgResponseDtoList: (json["bookingImgResponseDTOList"] != null) ? json["bookingImgResponseDTOList"] : "",
    workingTimeResponseDtoList: List<AddWorkingTimesDtoListElement>.from(json["workingTimeResponseDTOList"].map((x) => AddWorkingTimesDtoListElement.fromJson(x))),
    bookingDetailResponseDtoList: List<BookingDetailResponseDtoList>.from(json["bookingDetailResponseDTOList"].map((x) => BookingDetailResponseDtoList.fromJson(x))),
    paymentResponseDto: (json["paymentResponseDTO"] != null) ? json["paymentResponseDTO"] : "",
  );

  Map<String, dynamic> toJson() => {
    "address": address,
    "description": description,
    "elder": elder.toJson(),
    "place": place,
    "sitterDTO": sitterDto.toJson(),
    "totalPrice": totalPrice,
    "deposit": deposit,
    "status": status,
    "bookingImgResponseDTOList": bookingImgResponseDtoList,
    "workingTimeResponseDTOList": List<dynamic>.from(workingTimeResponseDtoList.map((x) => x.toJson())),
    "bookingDetailResponseDTOList": List<dynamic>.from(bookingDetailResponseDtoList.map((x) => x.toJson())),
    "paymentResponseDTO": paymentResponseDto,
  };
}

