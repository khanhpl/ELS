class BookingDataModel {
  int id;
  String name;
  String sitterName;
  String place;
  double totalPrice;
  String status;
  double deposit;
  dynamic payment;

  BookingDataModel({
    required this.id,
    required this.name,
    required this.sitterName,
    required this.place,
    required this.totalPrice,
    required this.status,
    required this.deposit,
  });


  factory BookingDataModel.fromJson(Map<String, dynamic> json) => BookingDataModel(
    id: json["id"],
    name: json["name"],
    sitterName: (json["sitterName"] != null) ? json["sitterName"] : "",
    place: json["place"],
    totalPrice: (json["totalPrice"] != null) ? json["totalPrice"] : 0,
    status: json["status"],
    deposit: (json["deposit"] != null) ? json["deposit"] : 0,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "sitterName": sitterName,
    "place": place,
    "totalPrice": totalPrice,
    "status": status,
    "deposit": deposit,
  };
}

