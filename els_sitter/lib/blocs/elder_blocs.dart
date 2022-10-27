import 'dart:convert';


import 'package:els_sitter/core/models/elder_model.dart';
import 'package:els_sitter/core/models/single_elder_model.dart';
import 'package:http/http.dart' as http;
import '../core/utils/globals.dart' as Globals;
class ElderBlocs{
  Future<ElderModel> getAllElder() async {
    try {
      var url =
      Uri.parse("https://els12.herokuapp.com/elder/${Globals.curUser!.data.email}");
      final response = await http.get(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization' : Globals.curUser!.data.token,
          'Accept': 'application/json; charset=UTF-8',
        },
      );
      if (response.statusCode.toString() == '200') {
        return ElderModel.fromJson(json.decode(response.body));
      } else {
        throw Exception('Unable to fetch elder from the REST API');
      }
    } finally {}
  }
  Future<SingleElderModel> getElderByID(int elderID) async {
    try {
      var url =
      Uri.parse("https://els12.herokuapp.com/elder/getBy/${elderID}");
      final response = await http.get(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization' : Globals.curUser!.data.token,
          'Accept': 'application/json; charset=UTF-8',
        },
      );
      if (response.statusCode.toString() == '200') {
        return SingleElderModel.fromJson(json.decode(response.body));
      } else {
        throw Exception('Unable to fetch elder from the REST API');
      }
    } finally {}
  }


}