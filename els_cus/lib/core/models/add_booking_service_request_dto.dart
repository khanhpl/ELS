class AddBookingServiceRequestDto {

  int id;
  int duration;
  AddBookingServiceRequestDto({
    required this.id,
    required this.duration,
  });


  factory AddBookingServiceRequestDto.fromJson(Map<String, dynamic> json) => AddBookingServiceRequestDto(
    id: json["id"],
    duration: json["duration"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "duration": duration,
  };
}