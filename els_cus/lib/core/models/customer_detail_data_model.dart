class CustomerDetailDataModel {
  int id;
  String fullName;
  String phone;
  String address;
  String dob;
  String email;
  String avatarUrl;
  String frontIdImgUrl;
  String backIdImgUrl;

  CustomerDetailDataModel({
    required this.id,
    required this.fullName,
    required this.phone,
    required this.address,
    required this.dob,
    required this.email,
    required this.avatarUrl,
    required this.frontIdImgUrl,
    required this.backIdImgUrl,
  });

  factory CustomerDetailDataModel.fromJson(Map<String, dynamic> json) =>
      CustomerDetailDataModel(
        id: json["id"],
        fullName: (json["fullName"] != null) ? json["fullName"] : "",
        phone: (json["phone"] != null) ? json["phone"] : "",
        address: (json["address"] != null) ? json["address"] : "",
        dob: (json["dob"] != null) ? json["dob"] : "",
        email: (json["email"] != null) ? json["email"] : "",
        avatarUrl: (json["avatarUrl"] != null) ? json["avatarUrl"] : "",
        frontIdImgUrl:
            (json["frontIdImgUrl"] != null) ? json["frontIdImgUrl"] : "",
        backIdImgUrl:
            (json["backIdImgUrl"] != null) ? json["backIdImgUrl"] : "",
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "fullName": fullName,
        "phone": phone,
        "address": address,
        // "dob": "${dob.year.toString().padLeft(4, '0')}-${dob.month.toString().padLeft(2, '0')}-${dob.day.toString().padLeft(2, '0')}",
        "dob": dob,
        "email": email,
        "avatarUrl": avatarUrl,
        "frontIdImgUrl": frontIdImgUrl,
        "backIdImgUrl": backIdImgUrl,
      };
}
