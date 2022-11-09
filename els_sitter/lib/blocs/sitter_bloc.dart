import 'dart:convert';

import 'package:els_sitter/core/models/sitter_detail_model.dart';
import 'package:http/http.dart' as http;
import '../core/utils/globals.dart' as Globals;
class SitterBlocs{

  Future<SitterDetailModel> getSitterDetailByEmail() async {
    try {
      var url =
      Uri.parse("https://els12.herokuapp.com/sitter/${Globals.curUser!.data.email}");
      final response = await http.get(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization' : Globals.curUser!.data.token,
          'Accept': 'application/json; charset=UTF-8',
        },
      );
      if (response.statusCode.toString() == '200') {
        return SitterDetailModel.fromJson(json.decode(response.body));
      } else {
        throw Exception('Unable to fetch sitter detail from the REST API');
      }
    } finally {}
  }
  Future<SitterDetailModel> updateSitterInfo(String fullname, String dob, String gender, String phone, String address, String email, String avatarImgUrl) async {
    try {
      var url =
      Uri.parse("https://els12.herokuapp.com/sitter/update?fullName=$fullname&dob=$dob&gender=$phone&phone=$phone&address=$address&email=${Globals.curUser!.data.email}&avatarImgUrl=$avatarImgUrl");
      final response = await http.get(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization' : Globals.curUser!.data.token,
          'Accept': 'application/json; charset=UTF-8',
        },
      );
      if (response.statusCode.toString() == '200') {
        return SitterDetailModel.fromJson(json.decode(response.body));
      } else {
        throw Exception('Unable to update sitter from the REST API');
      }
    } finally {}
  }

}