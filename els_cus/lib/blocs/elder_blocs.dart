
import 'dart:async';
import 'dart:convert';

import 'package:els_cus_mobile/core/models/elder_model.dart';
import 'package:els_cus_mobile/core/models/single_elder_model.dart';
import 'package:http/http.dart' as http;
import '../core/utils/globals.dart' as Globals;
class ElderBlocs{
  final StreamController _nameController = StreamController();

  final StreamController _dobController = StreamController();


  Stream get nameStream => _nameController.stream;
  Stream get dobStream => _dobController.stream;

  bool isValidElder(String name, String dob){
    bool isValid = false;
    bool isValidName = false;
    bool isValidDob = false;
    if(name.isEmpty){

      _nameController.sink.addError("Vui lòng không để trống tên thân nhân");
      isValidName = false;
    }else{
      _nameController.sink.add("Ok");
      isValidName = true;
    }
    if(dob == 'Chọn ngày'){
      _dobController.sink.addError("Vui lòng chọn ngày sinh của thân nhân");
      isValidDob = false;
    }else{
      _dobController.sink.add("Ok");
      isValidDob = true;
    }
    if(isValidName && isValidDob){
      isValid = true;
    }else{
      isValid = false;
    }
    return isValid;
  }



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
      print('Response Elder Code: ${response.statusCode.toString()} ');
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
  Future<bool> addNewElder(String name, String gender, String dob, String healthStatus, String note, bool isAllergy) async {
    try {
      var url = Uri.parse("https://els12.herokuapp.com/elder");
      final response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization' : Globals.curUser!.data.token,
          'Accept': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          <String, dynamic>{
            "name": name,
            "gender": gender,
            "dob": dob,
            "healthStatus": healthStatus,
            "note": note,
            "isAllergy": isAllergy,
            "email": Globals.curUser!.data.email,
          },
        ),
      );
      print('Test add new Elder Status code: ${response.statusCode.toString()}');
      if (response.statusCode.toString() == '200') {

        return true;
      } else {
        return false;
      }
    } finally {}
  }
}