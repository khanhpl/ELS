import 'dart:convert';

import 'package:els_cus_mobile/core/models/service_model.dart';
import 'package:els_cus_mobile/core/models/sitter_data_model.dart';
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
          'Authorization' : Globals.curUser!.data.token,
          'Accept': 'application/json; charset=UTF-8',
        },
      );
      if (response.statusCode.toString() == '200') {
        // print('test data'+ json.decode(response.body)['data'][0]['fullName'].toString());
        return ServiceModel.fromJson(json.decode(response.body));
      } else {
        throw Exception('Unable to fetch Service from the REST API');
      }
    } finally {}
  }
}

List<ServiceModel> parseAgentsServiceModel(var responseBody) {
  // final parsed = json.decode(responseBody).cast<Map<dynamic, dynamic>>();
  return responseBody.cast<Map<dynamic, dynamic>>().map<ServiceModel>((json) => ServiceModel.fromJson(json)).toList();
}