class CustomerResponseDto {
  dynamic id;
  String fullName;
  DateTime dob;
  String gender;
  String phone;
  String address;
  String email;
  String frontIdImgUrl;
  String backIdImgUrl;
  String avatarImgUrl;
  String status;

  CustomerResponseDto({
    this.id,
    required this.fullName,
    required this.dob,
    required this.gender,
    required this.phone,
    required this.address,
    required this.email,
    required this.frontIdImgUrl,
    required this.backIdImgUrl,
    required this.avatarImgUrl,
    required this.status,
  });

  factory CustomerResponseDto.fromJson(Map<String, dynamic> json) =>
      CustomerResponseDto(
        id: (json["id"] != null) ? json["id"] : "",
        fullName: json["fullName"],
        dob: DateTime.parse(json["dob"]),
        gender: json["gender"],
        phone: json["phone"],
        address: json["address"],
        email: json["email"],
        frontIdImgUrl: json["frontIdImgUrl"],
        backIdImgUrl: json["backIdImgUrl"],
        avatarImgUrl: json["avatarImgUrl"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "fullName": fullName,
        "dob":
            "${dob.year.toString().padLeft(4, '0')}-${dob.month.toString().padLeft(2, '0')}-${dob.day.toString().padLeft(2, '0')}",
        "gender": gender,
        "phone": phone,
        "address": address,
        "email": email,
        "frontIdImgUrl": frontIdImgUrl,
        "backIdImgUrl": backIdImgUrl,
        "avatarImgUrl": avatarImgUrl,
        "status": status,
      };
}
