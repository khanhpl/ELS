import 'package:els_sitter/core/models/certificateModel.dart';

class SitterDetailDataModel {
  var fullname;
  var dob;
  var gender;
  var phone;
  var address;
  var email;
  double? avgPrice;
  var idNumber;
  List<SitterDetailDataModel> sitterServices;
  double ratingStar;
  List<CertificateModel> certificateDTOS;

  SitterDetailDataModel({
    this.fullname,
    this.dob,
    this.gender,
    this.phone,
    this.address,
    this.email,
    required this.avgPrice,
    this.idNumber,
    required this.sitterServices,
    required this.ratingStar,
    required this.certificateDTOS,
  });

  factory SitterDetailDataModel.fromJson(Map<dynamic, dynamic> json) {
    return SitterDetailDataModel(
      fullname: json['fullName'],
      dob: json['dob'],
      gender: json['gender'],
      phone: json['phone'],
      address: json['address'],
      email: json['email'],
      avgPrice: (json['avgPrice'] != null) ? json['avgPrice'] : null,
      idNumber: json['idNumber'],
      sitterServices: List<SitterDetailDataModel>.from(
          json["sitterServices"].map((x) => SitterDetailDataModel.fromJson(x))),
      ratingStar: double.parse(json['ratingStar']),
      certificateDTOS: List<CertificateModel>.from(
          json["certificateDTOS"].map((x) => CertificateModel.fromJson(x))),
    );
  }
}
