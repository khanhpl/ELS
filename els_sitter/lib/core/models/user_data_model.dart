class UserDataModel {

  String fullName;
  DateTime dob;
  String phone;
  String gender;
  String email;
  String address;
  String role;
  String token;
  UserDataModel({
    required this.fullName,
    required this.dob,
    required this.phone,
    required this.gender,
    required this.email,
    required this.address,
    required this.role,
    required this.token,
  });


  factory UserDataModel.fromJson(Map<String, dynamic> json) => UserDataModel(
    fullName: json["fullName"],
    dob: DateTime.parse(json["dob"]),
    phone: json["phone"],
    gender: json["gender"],
    email: json["email"],
    address: json["address"],
    role: json["role"],
    token: json["token"],
  );

  Map<String, dynamic> toJson() => {
    "fullName": fullName,
    "dob": "${dob.year.toString().padLeft(4, '0')}-${dob.month.toString().padLeft(2, '0')}-${dob.day.toString().padLeft(2, '0')}",
    "phone": phone,
    "gender": gender,
    "email": email,
    "address": address,
    "role": role,
    "token": token,
  };
}