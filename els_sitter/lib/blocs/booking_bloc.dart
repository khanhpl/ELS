import 'dart:convert';
import 'package:els_sitter/core/models/booking_detail_model.dart';
import 'package:els_sitter/core/models/booking_model.dart';

import '../core/utils/globals.dart' as Globals;
import 'package:http/http.dart' as http;
class BookingBloc{
  Future<BookingModel> getBookingBySitterEmail() async {
    try {
      var url = Uri.parse("https://els12.herokuapp.com/booking/sitter/${Globals.curUser!.data.email}");
      final response = await http.get(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization' : Globals.curUser!.data.token,
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
      var url = Uri.parse("https://els12.herokuapp.com/booking/bookingDetail/${id}");
      final response = await http.get(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization' : Globals.curUser!.data.token,
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


}