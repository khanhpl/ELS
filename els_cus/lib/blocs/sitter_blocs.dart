import 'dart:convert';

import 'package:els_cus_mobile/core/models/sitter_data_model.dart';
import 'package:http/http.dart' as http;
import '../core/utils/globals.dart' as Globals;
class SitterBlocs{
  Future<List<SitterDataModel>> getAllSitter() async {
    try {
      var url =
      Uri.parse("https://els12.herokuapp.com/sitter");
      final response = await http.get(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization' : Globals.curUser!.data.bearerToken,
          'Accept': 'application/json; charset=UTF-8',  'Accept': 'application/json; charset=UTF-8',
        },
      );
      if (response.statusCode.toString() == '200') {

        return parseAgentsSitterDataModel(json.decode(response.body)['data']);
      } else {
        throw Exception('Unable to fetch Sitter from the REST API');
      }
    } finally {}
  }
  List<SitterDataModel> parseAgentsSitterDataModel(var responseBody) {
    // final parsed = json.decode(responseBody).cast<Map<dynamic, dynamic>>();
    return responseBody.cast<Map<dynamic, dynamic>>().map<SitterDataModel>((json) => SitterDataModel.fromJson(json)).toList();
  }
}