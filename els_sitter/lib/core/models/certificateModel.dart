class CertificateModel {

  String url;
  String exp;
  CertificateModel({
    required this.url,
    required this.exp,
  });


  factory CertificateModel.fromJson(Map<String, dynamic> json) => CertificateModel(
    url: json["url"],
    exp: json["exp"],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
    "exp": exp,
  };
}