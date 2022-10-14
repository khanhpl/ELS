class UserDataModel {
  var username;
  var password;
  var role;
  var bearerToken;
  UserDataModel(
      this.username,
      this.password,
      this.role,
      this.bearerToken,
      );

  factory UserDataModel.fromJson(Map<String, dynamic> json) {
    return UserDataModel(
      json['username'],
      json['password'],
      json['role'],
      json['token'],
    );
  }
}
