import 'dart:convert';

import 'package:els_sitter/core/models/service_model.dart';
import 'package:http/http.dart' as http;
import '../core/utils/globals.dart' as Globals;
class ServiceBlocs{
  Future<ServiceModel> getAllService() async {
    try {
      var url =
      Uri.parse("https://els12.herokuapp.com/service");
      final response = await http.get(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json; charset=UTF-8',
        },
      );

      if (response.statusCode.toString() == '200') {
        return ServiceModel.fromJson(json.decode(response.body));
      } else {
        throw Exception('Unable to fetch Service from the REST API');
      }
    } finally {}
  }
  Future<ServiceModel> getServiceByBookingID(String id) async {
    try {
      var url =
      Uri.parse("https://els12.herokuapp.com/booking/bookingDetail/${id}");
      final response = await http.get(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization' : Globals.curUser!.data.token,
          'Accept': 'application/json; charset=UTF-8',
        },
      );

      if (response.statusCode.toString() == '200') {
        return ServiceModel.fromJson(json.decode(response.body));
      } else {
        throw Exception('Unable to fetch Service from the REST API');
      }
    } finally {}
  }
}

