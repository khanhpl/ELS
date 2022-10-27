class CertificateModel {

  String url;
  String name;
  CertificateModel({
    required this.url,
    required this.name,
  });


  factory CertificateModel.fromJson(Map<String, dynamic> json) => CertificateModel(
    url: json["url"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
    "name": name,
  };
}