import 'package:els_sitter/core/models/sitter_service_response_dto.dart';

class SitterDetailDataModel {

  int id;
  String fullName;
  String phone;
  String address;
  DateTime dob;
  String email;
  String gender;
  String idNumber;
  String description;
  double avgPrice;
  String avatarUrl;
  String frontIdImgUrl;
  String backIdImgUrl;
  double ratingStar;
  List<dynamic> certificatesResponseDtos;
  List<SitterServicesResponseDto> sitterServicesResponseDtos;
  SitterDetailDataModel({
    required this.id,
    required this.fullName,
    required this.phone,
    required this.address,
    required this.dob,
    required this.email,
    required this.idNumber,
    required this.gender,
    required this.description,
    required this.avgPrice,
    required this.avatarUrl,
    required this.frontIdImgUrl,
    required this.backIdImgUrl,
    required this.ratingStar,
    required this.certificatesResponseDtos,
    required this.sitterServicesResponseDtos,
  });


  factory SitterDetailDataModel.fromJson(Map<String, dynamic> json) => SitterDetailDataModel(
    id: json["id"],
    fullName: json["fullName"],
    phone: json["phone"],
    address: json["address"],
    dob: DateTime.parse(json["dob"]),
    email: json["email"],
    gender: json["gender"],
    idNumber: json["idNumber"],
    description: json["description"],
    avgPrice: json["avgPrice"],
    avatarUrl: json["avatarUrl"],
    frontIdImgUrl: json["frontIdImgUrl"],
    backIdImgUrl: json["backIdImgUrl"],
    ratingStar: json["ratingStar"],
    certificatesResponseDtos: List<dynamic>.from(json["certificatesResponseDTOS"].map((x) => x)),
    sitterServicesResponseDtos: List<SitterServicesResponseDto>.from(json["sitterServicesResponseDTOS"].map((x) => SitterServicesResponseDto.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "fullName": fullName,
    "phone": phone,
    "address": address,
    "dob": "${dob.year.toString().padLeft(4, '0')}-${dob.month.toString().padLeft(2, '0')}-${dob.day.toString().padLeft(2, '0')}",
    "email": email,
    "gender": gender,
    "idNumber": idNumber,
    "description": description,
    "avgPrice": avgPrice,
    "avatarUrl": avatarUrl,
    "frontIdImgUrl": frontIdImgUrl,
    "backIdImgUrl": backIdImgUrl,
    "ratingStar": ratingStar,
    "certificatesResponseDTOS": List<dynamic>.from(certificatesResponseDtos.map((x) => x)),
    "sitterServicesResponseDTOS": List<dynamic>.from(sitterServicesResponseDtos.map((x) => x.toJson())),
  };
}