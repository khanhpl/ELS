class UserDataModel {
  String email;
  String role;
  String token;
  String address;
  String dob;
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

  setDob(String newDob) {
    dob = newDob;
  }

  factory UserDataModel.fromJson(Map<String, dynamic> json) => UserDataModel(
        email: json["email"],
        role: json["role"],
        token: json["token"],
        address: (json["address"]) != null ? json["address"] : "",
        dob: (json["dob"]) != null ? json["dob"] : "",
        fullName: json["fullName"],
        gender: (json["gender"] != null) ? json["gender"] : "",
        phone: (json["phone"] != null) ? json["phone"] : "",
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "role": role,
        "token": token,
        "address": address,
        // "dob": "${dob!.year.toString().padLeft(4, '0')}-${dob!.month.toString().padLeft(2, '0')}-${dob!.day.toString().padLeft(2, '0')}",
        "dob": dob,
        "fullName": fullName,
        "gender": gender,
        "phone": phone,
      };
}
