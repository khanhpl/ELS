
import 'package:els_sitter/core/models/sitter_detail_data_model.dart';

class SitterDetailModel {
  var successCode;
  var errorCode;
  SitterDetailDataModel data;
  SitterDetailModel(
      this.successCode,
      this.errorCode,
      this.data,
      );

  factory SitterDetailModel.fromJson(Map<String, dynamic> json) {
    return SitterDetailModel(
      (json['successCode']!= null) ? json['successCode'] : "",
      (json['errorCode'] != null) ? json['errorCode'] : "",
      SitterDetailDataModel.fromJson(json['data']),
    );
  }
}

