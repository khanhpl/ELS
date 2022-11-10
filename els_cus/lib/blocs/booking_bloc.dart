import 'dart:async';
import 'dart:convert';
import 'package:els_cus_mobile/core/models/booking_detail_model.dart';
import 'package:els_cus_mobile/core/models/booking_model.dart';
import 'package:els_cus_mobile/core/models/service_booking_request_model.dart';
import 'package:els_cus_mobile/core/models/service_data_model.dart';
import '../core/utils/globals.dart' as Globals;
import 'package:http/http.dart' as http;

class BookingBloc {
  final StreamController _addressController = StreamController();
  final StreamController _descriptionController = StreamController();

  Stream get addressStream => _addressController.stream;

  Stream get descriptionStream => _descriptionController.stream;

  double calTotal(List<ServiceDataModel> listSelectedService) {
    double totalPrice = 0;
    if (listSelectedService.isNotEmpty) {
      for (ServiceDataModel service in listSelectedService) {
        totalPrice += service.price;
      }
    }
    return totalPrice;
  }

  List<String> getListServiceID(List<ServiceDataModel> listService) {
    List<String> listID = [];
    if (listService.isNotEmpty) {
      for (ServiceDataModel service in listService) {
        listID.add("${service.id.toString()}");
      }
    }
    return listID;
  }

  Future<bool> createBooking(
      String address,
      String description,
      String elderID,
      String startDateTime,
      String endDateTime,
      String place,
      String totalPrice,
      List<ServiceRequestBookingModel> listBookingServiceRequest) async {
    try {
      var url = Uri.parse("https://els12.herokuapp.com/booking");
      final response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Globals.curUser!.data.token,
          'Accept': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          <String, dynamic>{
            "address": address,
            "description": description,
            "elderId": elderID,
            "startDateTime": startDateTime,
            "endDateTime": endDateTime,
            "place": place,
            "totalPrice": totalPrice,
            "email": Globals.curUser!.data.email,
            "bookingServiceRequestDTOS": listBookingServiceRequest,
          },
        ),
      );
      print('Status code:' + response.statusCode.toString());
      if (response.statusCode.toString() == '200') {
        return true;
      } else {
        return false;
      }
    } finally {}
  }

  Future<BookingModel> getBookingByCusEmail() async {
    try {
      var url = Uri.parse(
          "https://els12.herokuapp.com/booking/customer/${Globals.curUser!.data.email}");
      final response = await http.get(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Globals.curUser!.data.token,
          'Accept': 'application/json; charset=UTF-8',
        },
      );
      if (response.statusCode.toString() == '200') {
        return BookingModel.fromJson(json.decode(response.body));
      } else {
        throw Exception('Unable to booking Service from the REST API');
      }
    } finally {}
  }

  Future<BookingModel> getBookingByStatusName(String statusName) async {
    try {
      var url = Uri.parse(
          "https://els12.herokuapp.com/booking/customer/${Globals.curUser!.data.email}/${statusName}");
      final response = await http.get(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Globals.curUser!.data.token,
          'Accept': 'application/json; charset=UTF-8',
        },
      );
      print('Test status name: ${statusName}');
      print('Test email: ${Globals.curUser!.data.email}');
      print(
          'Response getBookingByStatusName Code: ${response.statusCode.toString()} ');
      if (response.statusCode.toString() == '200') {
        return BookingModel.fromJson(json.decode(response.body));
      } else {
        throw Exception('Unable to booking Service from the REST API');
      }
    } finally {}
  }

  Future<BookingDetailModel> getBookingDetailByBookingID(String id) async {
    try {
      var url =
          Uri.parse("https://els12.herokuapp.com/booking/bookingDetail/${id}");
      final response = await http.get(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Globals.curUser!.data.token,
          'Accept': 'application/json; charset=UTF-8',
        },
      );
      if (response.statusCode.toString() == '200') {
        return BookingDetailModel.fromJson(json.decode(response.body));
      } else {
        throw Exception('Unable to booking detail from the REST API');
      }
    } finally {}
  }
}
