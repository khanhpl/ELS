class SitterServicesResponseDto {

  String name;
  int exp;
  double price;
  SitterServicesResponseDto({
    required this.name,
    required this.exp,
    required this.price,
  });


  factory SitterServicesResponseDto.fromJson(Map<String, dynamic> json) => SitterServicesResponseDto(
    name: json["name"],
    exp: json["exp"],
    price: json["price"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "exp": exp,
    "price": price,
  };
}
