class SitterServiceRequestModel {

  int servicePrice;
  int exp;
  int id;

  SitterServiceRequestModel({
    required this.servicePrice,
    required this.exp,
    required this.id,
  });

  factory SitterServiceRequestModel.fromJson(Map<String, dynamic> json) => SitterServiceRequestModel(
    servicePrice: json["servicePrice"],
    exp: json["exp"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "servicePrice": servicePrice,
    "exp": exp,
    "id": id,
  };
}