class ServiceRequestBookingModel {
  int id;
  int duration;

  ServiceRequestBookingModel(this.id, this.duration);
  Map<String, dynamic> toJson() => {
    "id": id,
    "duration": duration,
  };
}
