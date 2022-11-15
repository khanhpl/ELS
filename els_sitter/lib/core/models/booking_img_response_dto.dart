class BookingImgResponseDtoList {

  String localDateTime;
  String url;
  BookingImgResponseDtoList({
    required this.localDateTime,
    required this.url,
  });


  factory BookingImgResponseDtoList.fromJson(Map<String, dynamic> json) => BookingImgResponseDtoList(
    localDateTime: json["localDateTime"],
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "localDateTime": localDateTime,
    "url": url,
  };
}