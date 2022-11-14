class ServiceRequestBookingInfoModel {
  int id;
  int duration;

  ServiceRequestBookingInfoModel(this.id, this.duration);
  Map<String, dynamic> toJson() => {
    "id": id,
    "duration": duration,
  };
}
