import 'dart:convert';
import 'package:els_sitter/core/models/booking_detail_model.dart';
import 'package:els_sitter/core/models/booking_info_model.dart';
import 'package:els_sitter/core/models/booking_model.dart';

import '../core/models/WorkingScheduleModel.dart';
import '../core/utils/globals.dart' as Globals;
import 'package:http/http.dart' as http;

class BookingBloc {
  Future<BookingModel> getBookingBySitterEmail() async {
    try {
      var url = Uri.parse(
          "https://els12.herokuapp.com/booking/sitter/${Globals.curUser!.data.email}");
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
        throw Exception('Unable to get booking from the REST API');
      }
    } finally {}
  }

  Future<BookingDetailModel> getBookingDetailByBookingID(String id) async {
    try {
      var url = Uri.parse("https://els12.herokuapp.com/booking/get-by-id/$id");
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
        throw Exception('Unable to get booking detail from the REST API');
      }
    } finally {}
  }

  Future<BookingInfoModel> getBookingByStatusName(String statusName) async {
    try {
      var url = Uri.parse(
          "https://els12.herokuapp.com/booking/bookings-by-status/$statusName");
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

  Future<bool> sitterAcceptAction(int bookingID) async {
    try {
      var url =
          Uri.parse("https://els12.herokuapp.com/booking/accept/$bookingID");
      final response = await http.put(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Globals.curUser!.data.token,
          'Accept': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          <String, String>{},
        ),
      );
      if (response.statusCode.toString() == '200') {
        return true;
      } else {
        return false;
      }
    } finally {}
  }

  Future<bool> sitterCancelAction(int bookingID) async {
    try {
      var url = Uri.parse(
          "https://els12.herokuapp.com/sitter-cancel/cancel-booking/$bookingID");
      final response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Globals.curUser!.data.token,
          'Accept': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          <String, String>{},
        ),
      );
      if (response.statusCode.toString() == '200') {
        return true;
      } else {
        return false;
      }
    } finally {}
  }

  Future<bool> sitterCheckInAction(int bookingID, String imgUrl) async {
    try {
      var url = Uri.parse("https://els12.herokuapp.com/booking-img/check-in");
      final response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Globals.curUser!.data.token,
          'Accept': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          <String, dynamic>{
            "bookingId": bookingID,
            "url": imgUrl,
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

  Future<bool> sitterCheckOutAction(int bookingID, String imgUrl) async {
    try {
      var url = Uri.parse("https://els12.herokuapp.com/booking-img/check-out");
      final response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Globals.curUser!.data.token,
          'Accept': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          <String, dynamic>{
            "bookingId": bookingID,
            "url": imgUrl,
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

  Future<bool> sitterReportCus(int bookingID, String comment) async {
    try {
      var url = Uri.parse("https://els12.herokuapp.com/report");
      final response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Globals.curUser!.data.token,
          'Accept': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          <String, dynamic>{"bookingId": bookingID, "comment": comment},
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
}
