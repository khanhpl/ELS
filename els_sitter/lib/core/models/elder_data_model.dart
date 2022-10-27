class ElderDataModel {

  int id;
  String name;
  String gender;
  DateTime dob;
  String healthStatus;
  String note;
  bool isAllergy;
  ElderDataModel({
    required this.id,
    required this.name,
    required this.gender,
    required this.dob,
    required this.healthStatus,
    required this.note,
    required this.isAllergy,
  });


  factory ElderDataModel.fromJson(Map<String, dynamic> json) => ElderDataModel(
    id: json["id"],
    name: json["name"],
    gender: json["gender"],
    dob: DateTime.parse(json["dob"]),
    healthStatus: (json["healthStatus"]!= null)?json["healthStatus"]:"",
    note: (json["note"] != null)?json["note"]:"",
    isAllergy: json["isAllergy"],
  );


}

