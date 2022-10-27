

import 'package:els_sitter/core/models/cus_data_model.dart';

class CusModel {
  var successCode;
  var errorCode;
  CusDataModel data;
  CusModel(
      this.successCode,
      this.errorCode,
      this.data,
      );

  factory CusModel.fromJson(Map<String, dynamic> json) {
    return CusModel(
      json['successCode'],
      json['errorCode'],
      json['data'],
    );
  }
}

