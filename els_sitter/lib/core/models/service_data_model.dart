
import 'package:els_sitter/core/models/category_model.dart';
import 'package:els_sitter/core/models/status_model.dart';

class ServiceDataModel {

  int id;
  String name;
  double price;
  String description;
  dynamic url;
  dynamic sitterRequirement;
  int duration;
  StatusModel status;
  CategoryModel category;
  ServiceDataModel({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    this.url,
    this.sitterRequirement,
    required this.duration,
    required this.status,
    required this.category,
  });


  factory ServiceDataModel.fromJson(Map<String, dynamic> json) => ServiceDataModel(
    id: json["id"],
    name: json["name"],
    price: json["price"],
    description: json["description"],
    url: (json["url"] != null)? json["url"] : "",
    sitterRequirement: (json["sitterRequirement"] != null) ? json["sitterRequirement"] : "",
    duration: json["duration"],
    status: StatusModel.fromJson(json["status"]),
    category: CategoryModel.fromJson(json["category"]),
  );


}