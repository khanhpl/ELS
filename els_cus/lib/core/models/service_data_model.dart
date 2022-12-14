
import 'package:els_cus_mobile/core/models/category_data_model.dart';
import 'package:els_cus_mobile/core/models/category_model.dart';

class ServiceDataModel {

  int id;
  String name;
  double price;
  String description;
  String url;
  dynamic sitterRequirement;
  int duration;
  int commission;
  String status;
  CategoryDataModel category;
  ServiceDataModel({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.url,
    this.sitterRequirement,
    required this.duration,
    required this.commission,
    required this.status,
    required this.category,
  });


  factory ServiceDataModel.fromJson(Map<String, dynamic> json) => ServiceDataModel(
    id: json["id"],
    name: json["name"],
    price: json["price"],
    description: json["description"],
    url: (json["url"] != null) ? json["url"] : "",
    sitterRequirement: (json["sitterRequirement"] != null)?json["sitterRequirement"]:"",
    duration: json["duration"],
    commission: json["commission"],
    status: json["status"],
    category: CategoryDataModel.fromJson(json["category"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "price": price,
    "description": description,
    "url": url,
    "sitterRequirement": sitterRequirement,
    "duration": duration,
    "commission": commission,
    "status": status,
    "category": category.toJson(),
  };
}