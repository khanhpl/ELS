class SitterDto {

  int id;
  String fullName;
  DateTime dob;
  String gender;
  String phone;
  String address;
  String email;
  String avatarImgUrl;
  SitterDto({
    required this.id,
    required this.fullName,
    required this.dob,
    required this.gender,
    required this.phone,
    required this.address,
    required this.email,
    required this.avatarImgUrl,
  });


  factory SitterDto.fromJson(Map<String, dynamic> json) => SitterDto(
    id: json["id"],
    fullName: json["fullName"],
    dob: DateTime.parse(json["dob"]),
    gender: json["gender"],
    phone: json["phone"],
    address: json["address"],
    email: json["email"],
    avatarImgUrl: json["avatarImgUrl"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "fullName": fullName,
    "dob": "${dob.year.toString().padLeft(4, '0')}-${dob.month.toString().padLeft(2, '0')}-${dob.day.toString().padLeft(2, '0')}",
    "gender": gender,
    "phone": phone,
    "address": address,
    "email": email,
    "avatarImgUrl": avatarImgUrl,
  };
}