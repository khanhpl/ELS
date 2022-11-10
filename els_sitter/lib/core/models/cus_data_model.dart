class CusDataModel {
  int id;
  String fullname;
  DateTime? dob;
  String gender;
  String phone;
  String address;
  String email;

  CusDataModel(
      this.id,
      this.fullname,
      this.dob,
      this.gender,
      this.phone,
      this.address,
      this.email,
      );

  factory CusDataModel.fromJson(Map<dynamic, dynamic> json) {
    return CusDataModel(
      json['id'],
      json['fullName'],
      (json["dob"]  != null) ?(DateTime.parse(json["dob"])): null,
      (json["gender"] != null)?json["gender"]:"",
      (json['phone'] != null) ? json['phone'] : "",
      (json["address"] != null) ?json["address"]:"",
      json['email'],
    );
  }
}
