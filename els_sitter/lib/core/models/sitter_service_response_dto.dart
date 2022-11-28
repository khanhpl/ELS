class SitterServicesResponseDto {

  String name;
  int exp;
  double price;
  int id;
  int duration;
  SitterServicesResponseDto({
    required this.name,
    required this.exp,
    required this.price,
    required this.id,
    required this.duration,
  });


  factory SitterServicesResponseDto.fromJson(Map<String, dynamic> json) => SitterServicesResponseDto(
    name: json["name"],
    exp: json["exp"],
    price: json["price"],
    id: json["id"],
    duration: json["duration"]
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "exp": exp,
    "price": price,
    "id": id,
    "duration": duration
  };
}
