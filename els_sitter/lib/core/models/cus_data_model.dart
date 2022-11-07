class CusDataModel {
  var id;
  var username;
  var fullname;
  var dob;
  var gender;
  var phone;
  var address;
  var email;

  CusDataModel(
      this.id,
      this.username,
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
      json['username'],
      json['fullName'],
      json['dob'],
      json['gender'],
      (json['phone'] != null) ? json['phone'] : "",
      json['address'],
      json['email'],
    );
  }
}
