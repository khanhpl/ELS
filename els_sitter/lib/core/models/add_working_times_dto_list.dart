class AddWorkingTimesDtoListElement {

  String startDateTime;
  String endDateTime;
  AddWorkingTimesDtoListElement({
    required this.startDateTime,
    required this.endDateTime,
  });


  factory AddWorkingTimesDtoListElement.fromJson(Map<String, dynamic> json) => AddWorkingTimesDtoListElement(
    startDateTime: json["startDateTime"],
    endDateTime: json["endDateTime"],
  );

  Map<String, dynamic> toJson() => {
    "startDateTime": startDateTime,
    "endDateTime": endDateTime,
  };

  @override
  String toString() {
    return 'AddWorkingTimesDtoListElement{startDateTime: $startDateTime, endDateTime: $endDateTime}';
  }
}