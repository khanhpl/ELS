import 'package:els_cus_mobile/core/models/sitter_data_model.dart';

class SitterModel {
  var successCode;
  var errorCode;
  SitterDataModel data;

  SitterModel(
    this.successCode,
    this.errorCode,
    this.data,
  );

  factory SitterModel.fromJson(Map<String, dynamic> json) {
    return SitterModel(
      json['successCode'],
      json['errorCode'],
      json['data'],
    );
  }
}
