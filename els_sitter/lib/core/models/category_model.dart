import 'category_data_model.dart';

class CategoryModel {
  dynamic successCode;
  dynamic errorCode;
  List<CategoryDataModel> data;
  CategoryModel({
    this.successCode,
    this.errorCode,
    required this.data,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
    successCode: (json["successCode"] != null)? json["successCode"]:"",
    errorCode: (json["errorCode"] != null) ? json["errorCode"]:"",
    data: List<CategoryDataModel>.from(json["data"].map((x) => CategoryDataModel.fromJson(x))),
  );
}