class UserIDImageModel {
  String fontIdImgUrl;
  String backIdImgUrl;
  String avatarImgUrl;
  UserIDImageModel({
    required this.fontIdImgUrl,
    required this.backIdImgUrl,
    required this.avatarImgUrl,
  });


  factory UserIDImageModel.fromJson(Map<String, dynamic> json) => UserIDImageModel(
    fontIdImgUrl: json["fontIdImgUrl"],
    backIdImgUrl: json["backIdImgUrl"],
    avatarImgUrl: json["avatarImgUrl"],
  );
  Map<String, dynamic> toJson() => {
    "fontIdImgUrl": fontIdImgUrl,
    "backIdImgUrl": backIdImgUrl,
    "avatarImgUrl": avatarImgUrl,
  };

}