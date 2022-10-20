class UserDataModel {

  String email;
  String role;
  String token;
  String address;
  DateTime dob;
  String fullName;
  String gender;
  String phone;
  UserDataModel({
    required this.email,
    required this.role,
    required this.token,
    required this.address,
    required this.dob,
    required this.fullName,
    required this.gender,
    required this.phone,
  });


  factory UserDataModel.fromJson(Map<String, dynamic> json) => UserDataModel(
    email: json["email"],
    role: json["role"],
    token: json["token"],
    address: json["address"],
    dob: DateTime.parse(json["dob"]),
    fullName: json["fullName"],
    gender: json["gender"],
    phone: json["phone"],
  );

  Map<String, dynamic> toJson() => {
    "email": email,
    "role": role,
    "token": token,
    "address": address,
    "dob": "${dob.year.toString().padLeft(4, '0')}-${dob.month.toString().padLeft(2, '0')}-${dob.day.toString().padLeft(2, '0')}",
    "fullName": fullName,
    "gender": gender,
    "phone": phone,
  };
}