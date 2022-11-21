class BookingImgResponseDtoList {

  DateTime localDateTime;
  dynamic checkOutUrl;
  dynamic checkInUrl;
  BookingImgResponseDtoList({
    required this.localDateTime,
    this.checkOutUrl,
    this.checkInUrl,
  });


  factory BookingImgResponseDtoList.fromJson(Map<String, dynamic> json) => BookingImgResponseDtoList(
    localDateTime: DateTime.parse(json["localDateTime"]),
    checkOutUrl: json["checkOutUrl"],
    checkInUrl: json["checkInUrl"],
  );

  Map<String, dynamic> toJson() => {
    "localDateTime": localDateTime.toIso8601String(),
    "checkOutUrl": checkOutUrl,
    "checkInUrl": checkInUrl,
  };
}
