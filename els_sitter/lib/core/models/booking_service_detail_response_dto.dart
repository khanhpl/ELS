class BookingDetailResponseDtoList {

  int id;
  String serviceName;
  int duration;
  int commission;
  double price;
  BookingDetailResponseDtoList({
    required this.id,
    required this.serviceName,
    required this.duration,
    required this.commission,
    required this.price,
  });


  factory BookingDetailResponseDtoList.fromJson(Map<String, dynamic> json) => BookingDetailResponseDtoList(
    id: json["id"],
    serviceName: json["serviceName"],
    duration: json["duration"],
    commission: json["commission"],
    price: json["price"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "serviceName": serviceName,
    "duration": duration,
    "commission": commission,
    "price": price,
  };
}