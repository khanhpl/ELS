class StatusModel {

  int id;
  String statusName;
  StatusModel({
    required this.id,
    required this.statusName,
  });


  factory StatusModel.fromJson(Map<String, dynamic> json) => StatusModel(
    id: json["id"],
    statusName: json["statusName"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "statusName": statusName,
  };
}