class SitterServiceDataModel {

  int servicePrice;
  int exp;
  int duration;
  String serviceName;

  SitterServiceDataModel({
    required this.servicePrice,
    required this.exp,
    required this.duration,
    required this.serviceName
  });

  factory SitterServiceDataModel.fromJson(Map<String, dynamic> json) => SitterServiceDataModel(
    servicePrice: json["servicePrice"],
    exp: json["exp"],
    duration: json["duration"],
    serviceName: json["serviceName"],
  );

}