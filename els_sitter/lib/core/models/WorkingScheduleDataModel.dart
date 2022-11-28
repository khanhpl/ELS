class WorkingScheduleDataModel {

  int bookingId;
  String status;
  String date;
  WorkingScheduleDataModel({
    required this.bookingId,
    required this.status,
    required this.date,
  });


  factory WorkingScheduleDataModel.fromJson(Map<String, dynamic> json) => WorkingScheduleDataModel(
    bookingId: json["bookingId"],
    status: json["status"],
    date: json["dateTime"],
  );

  Map<String, dynamic> toJson() => {
    "bookingId": bookingId,
    "status": status,
    "dateTime": date,
  };
}
