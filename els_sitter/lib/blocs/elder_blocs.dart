import 'dart:convert';

import 'package:els_sitter/core/models/elder_data_model.dart';
import 'package:http/http.dart' as http;
import '../core/utils/globals.dart' as Globals;
class ElderBlocs{
  Future<List<ElderDataModel>> getAllElder() async {
    try {
      var url =
      Uri.parse("https://els12.herokuapp.com/elder");
      final response = await http.get(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization' : Globals.curUser!.data.token,
          'Accept': 'application/json; charset=UTF-8',
        },
      );
      if (response.statusCode.toString() == '200') {
        return parseAgentsElderDataModel(json.decode(response.body)['data']);
      } else {
        throw Exception('Unable to fetch elder from the REST API');
      }
    } finally {}
  }

  List<ElderDataModel> parseAgentsElderDataModel(var responseBody) {
    // final parsed = json.decode(responseBody).cast<Map<dynamic, dynamic>>();
    return responseBody.cast<Map<dynamic, dynamic>>().map<ElderDataModel>((json) => ElderDataModel.fromJson(json)).toList();
  }
}