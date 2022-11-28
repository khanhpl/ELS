import 'dart:async';
import 'dart:convert';
import 'package:els_cus_mobile/core/models/WorkingScheduleModel.dart';
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
  final StreamController _workScheduleController = StreamController();
  final StreamController _serviceListController = StreamController();
  final StreamController _workExpController = StreamController();
  final StreamController _elderController = StreamController();

  Stream get addressStream => _addressController.stream;
  Stream get descriptionStream => _descriptionController.stream;
  Stream get workScheduleStream => _workScheduleController.stream;
  Stream get serviceListStream => _serviceListController.stream;
  Stream get workExpStream => _workExpController.stream;
  Stream get elderStream => _elderController.stream;

  bool isValidInput(String address, int workScheduleList, int serviceList, String chooseElderID) {
    bool isValid = false;
    bool addressValid = false;
    bool workScheduleListValid = false;
    bool validServiceList = false;
    bool elderValid = false;
    if (address.isEmpty) {
      addressValid = false;
      _addressController.sink.addError("*Địa chỉ không được để trống");
    } else {
      addressValid = true;
      _addressController.sink.add("OK");
    }
    if (workScheduleList < 1) {
      workScheduleListValid = false;
      _workScheduleController.sink.addError(
          "*Vui lòng chọn thời gian thực hiện");
    } else {
      workScheduleListValid = true;
      _workScheduleController.sink.add("OK");
    }
    if (serviceList < 1) {
      validServiceList = false;
      _serviceListController.sink.addError(
          "*Vui lòng chọn dịch vụ thực hiện");
    } else {
      validServiceList = true;
      _serviceListController.sink.add("OK");
    }

    if (chooseElderID == "") {
      elderValid = false;
      _elderController.sink.addError(
          "*Vui lòng chọn thân nhân được chăm sóc");
    } else {
      elderValid = true;
      _elderController.sink.add("OK");
    }

    if (addressValid && workScheduleListValid && validServiceList && elderValid) {
      isValid = true;
    } else {
      isValid = false;
    }

    return isValid;
  }
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
  Future<bool> createPayment(String paymentType, String email, int amount, int bookingId) async {
    try {
      var url =
      Uri.parse("https://els12.herokuapp.com/payment/paid");
      final response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Globals.curUser!.data.token,
          'Accept': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          <String, dynamic>{
            "paymentType": paymentType,
            "email": email,
            "amount": amount,
            "bookingId": bookingId
          },
        ),
      );
      if (response.statusCode.toString() == '200') {
        return true;
      } else {
        return false;
      }
    } finally {}
  }
  Future<bool> cusConfirmCheckOut(int bookingId) async {
    try {
      var url =
      Uri.parse("https://els12.herokuapp.com/booking/check-booking-customer/$bookingId");
      final response = await http.put(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Globals.curUser!.data.token,
          'Accept': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          <String, dynamic>{}
        ),
      );
      if (response.statusCode.toString() == '200') {
        return true;
      } else {
        return false;
      }
    } finally {}
  }
  Future<bool> cusRating(int bookingId, double star, String comment) async {
    try {
      var url =
      Uri.parse("https://els12.herokuapp.com/rating/rate");
      final response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Globals.curUser!.data.token,
          'Accept': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
            <String, dynamic>{
              "bookingId": bookingId,
              "star": star,
              "comment": comment
            }
        ),
      );
      if (response.statusCode.toString() == '200') {
        return true;
      } else {
        return false;
      }
    } finally {}
  }

  Future<WorkingScheduleModel> getWorkingScheduke(int bookingId, String status) async {
    try {
      var url =
      Uri.parse("https://els12.herokuapp.com/time/get-all-by-booking-id/$bookingId/$status");
      final response = await http.get(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Globals.curUser!.data.token,
          'Accept': 'application/json; charset=UTF-8',
        },
      );
      if (response.statusCode.toString() == '200') {
        return WorkingScheduleModel.fromJson(json.decode(response.body));
      } else {
        throw Exception('Unable to get WorkingScheduleModel from the REST API');
      }
    } finally {}
  }
  Future<bool> reduceDate(int bookingId, String date) async {
    List<String> listDate = [];
    listDate.add(date);
    try {
      var url =
      Uri.parse("https://els12.herokuapp.com/time/reduce");
      final response = await http.put(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Globals.curUser!.data.token,
          'Accept': 'application/json; charset=UTF-8',
        },
        body:jsonEncode(
            <String, dynamic>{
              "bookingId": bookingId,
              "dateList": listDate,
            }
        ),
      );
      print('Test bookingid reduceDate: $bookingId');
      print('Test date reduceDate: $date');
      print('Test response code reduceDate: ${response.statusCode}');
      print('Test errorCode');
      if (response.statusCode.toString() == '200') {
        return true;
      } else {
        return false;
      }
    } finally {}
  }
}
