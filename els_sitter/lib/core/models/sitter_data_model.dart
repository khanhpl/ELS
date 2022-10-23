class SitterDataModel {
  var id;
  var username;
  var fullname;
  var dob;
  var gender;
  var phone;
  var address;
  var email;

  SitterDataModel(
    this.id,
    this.username,
    this.fullname,
    this.dob,
    this.gender,
    this.phone,
    this.address,
    this.email,
  );

  factory SitterDataModel.fromJson(Map<dynamic, dynamic> json) {
    return SitterDataModel(
      json['id'],
      json['username'],
      json['fullName'],
      json['dob'],
      json['gender'],
      json['phone'],
      json['address'],
      json['email'],
    );
  }
}
