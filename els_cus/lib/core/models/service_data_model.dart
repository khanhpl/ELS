import 'package:els_cus_mobile/core/models/category_model.dart';
import 'package:els_cus_mobile/core/models/status_model.dart';
import 'package:flutter/foundation.dart';

class ServiceDataModel {

  int id;
  String name;
  double price;
  String description;
  dynamic url;
  String sitterRequirement;
  int duration;
  StatusModel status;
  CategoryModel category;
  ServiceDataModel({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.url,
    required this.sitterRequirement,
    required this.duration,
    required this.status,
    required this.category,
  });


  factory ServiceDataModel.fromJson(Map<String, dynamic> json) => ServiceDataModel(
    id: json["id"],
    name: json["name"],
    price: json["price"],
    description: json["description"],
    url: json["url"],
    sitterRequirement: json["sitterRequirement"],
    duration: json["duration"],
    status: StatusModel.fromJson(json["status"]),
    category: CategoryModel.fromJson(json["category"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "price": price,
    "description": description,
    "url": url,
    "sitterRequirement": sitterRequirement,
    "duration": duration,
    "status": status.toJson(),
    "category": category.toJson(),
  };
}