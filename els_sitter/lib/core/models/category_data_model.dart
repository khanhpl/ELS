class CategoryDataModel {
  int id;
  String name;
  CategoryDataModel({
    required this.id,
    required this.name,
  });

  factory CategoryDataModel.fromJson(Map<String, dynamic> json) => CategoryDataModel(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}