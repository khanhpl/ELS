class ElderDataModel {
  var id;
  var name;
  var gender;
  var dob;
  var healthStatus;
  var note;
  var isAllergy;

  ElderDataModel(
      this.id,
      this.name,
      this.gender,
      this.dob,
      this.healthStatus,
      this.note,
      this.isAllergy,
      );

  factory ElderDataModel.fromJson(Map<dynamic, dynamic> json) {
    return ElderDataModel(
      json['id'],
      json['name'],
      json['gender'],
      json['dob'],
      json['healthStatus'],
      json['note'],
      json['isAllergy'],
    );
  }
}
