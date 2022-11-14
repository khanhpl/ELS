import 'dart:async';
import 'dart:convert';
import 'package:els_cus_mobile/core/models/add_booking_service_request_dto.dart';
import 'package:els_cus_mobile/core/models/add_working_times_dto_list.dart';
import 'package:els_cus_mobile/core/models/booking_detail_model.dart';
import 'package:els_cus_mobile/core/models/booking_form_model.dart';
import 'package:els_cus_mobile/core/models/booking_info_model.dart';
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

  Future<bool> createBooking(BookingFormModel BookingInfoModel) async {
    try {
      var url = Uri.parse("https://els12.herokuapp.com/booking/add");
      final response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Globals.curUser!.data.token,
          'Accept': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          <dynamic, dynamic>{
            "address": BookingInfoModel.address,
            "description": BookingInfoModel.description,
            "elderId": BookingInfoModel.elderId,
            "place": BookingInfoModel.place,
            "email": BookingInfoModel.email,
            "totalPrice": BookingInfoModel.totalPrice,
            "addWorkingTimesDTOList": BookingInfoModel.addWorkingTimesDtoList,
            "addBookingServiceRequestDTOS":
                BookingInfoModel.addBookingServiceRequestDtos,
          },
        ),
      );
      print('Status code createBooking:' + response.statusCode.toString());
      if (response.statusCode.toString() == '200') {
        return true;
      } else {
        return false;
      }
    } finally {}
  }


  Future<BookingInfoModel> getBookingByStatusName(String statusName) async {
    try {
      var url = Uri.parse("https://els12.herokuapp.com/booking/bookings-by-customer-email/${Globals.curUser!.data.email}/$statusName");
      final response = await http.get(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Globals.curUser!.data.token,
          'Accept': 'application/json; charset=UTF-8',
        },
      );

      if (response.statusCode.toString() == '200') {
        return BookingInfoModel.fromJson(json.decode(response.body));
      } else {
        throw Exception('Unable to fetch booking from the REST API');
      }
    } finally {}
  }

  Future<BookingDetailModel> getBookingDetailByBookingID(String id) async {
    try {
      var url =
          Uri.parse("https://els12.herokuapp.com/booking/get-by-id/$id");
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
