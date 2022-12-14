import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:els_cus_mobile/core/models/elder_model.dart';
import 'package:http/http.dart' as http;
import '../core/utils/globals.dart' as Globals;

class ElderBlocs {
  final StreamController _nameController = StreamController();
  final StreamController _dobController = StreamController();
  final StreamController _noteController = StreamController();
  final StreamController _healthStatusController = StreamController();
  final StreamController _genderController = StreamController();
  final StreamController _isAllergy = StreamController();

  Stream get nameStream => _nameController.stream;

  Stream get dobStream => _dobController.stream;

  Stream get noteStream => _noteController.stream;

  Stream get healthStatusStream => _healthStatusController.stream;

  Stream get genderStream => _genderController.stream;

  Stream get allergyStream => _isAllergy.stream;

  bool isValidElder(String name, String dob) {
    bool isValid = false;
    bool isValidName = false;
    bool isValidDob = false;
    if (name.isEmpty) {
      _nameController.sink.addError("Vui lòng không để trống tên thân nhân");
      isValidName = false;
    } else {
      _nameController.sink.add("Ok");
      isValidName = true;
    }
    if (dob == 'Chọn ngày') {
      _dobController.sink.addError("Vui lòng chọn ngày sinh của thân nhân");
      isValidDob = false;
    } else {
      _dobController.sink.add("Ok");
      isValidDob = true;
    }
    if (isValidName && isValidDob) {
      isValid = true;
    } else {
      isValid = false;
    }
    return isValid;
  }

  Future<ElderModel> getAllElder() async {
    try {
      var url = Uri.parse(
          "https://els12.herokuapp.com/elder/elders-by-customer/${Globals.curUser!.data.email}");
      final response = await http.get(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Globals.curUser!.data.token,
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

  Future<ElderModel> getElderByID(int elderID) async {
    try {
      var url =
      Uri.parse("https://els12.herokuapp.com/elder/get-by-id/${elderID}");

      final response = await http.get(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Globals.curUser!.data.token,
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

  Future<bool> addNewElder(String name, String gender, String dob,
      String healthStatus, String note, bool isAllergy) async {
    try {
      var url = Uri.parse("https://els12.herokuapp.com/elder/add");
      final response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Globals.curUser!.data.token,
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
      if (response.statusCode.toString() == '200') {
        return true;
      } else {
        return false;
      }
    } finally {}
  }

  Future<bool> createElder(String name, String gender, String dob,
      String healthStatus, String note, bool isAllergy, String email) async {
    try {
      var url = Uri.parse("https://els12.herokuapp.com/elder/add");
      final response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Globals.curUser!.data.token,
          'Accept': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          <String, dynamic>{
            'name': name,
            'gender': gender,
            'dob': dob,
            'healthStatus': healthStatus,
            'note': note,
            'isAllergy': isAllergy,
            'email': email
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

  Future<bool> updateElder(int id, String name, String gender, String dob,
      String healthStatus, String note, bool isAllergy) async {
    try {
      var url = Uri.parse("https://els12.herokuapp.com/elder/update");
      final response = await http.put(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Globals.curUser!.data.token,
          'Accept': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, dynamic>{
          'id': id,
          'name': name,
          'gender': gender,
          "dob": dob,
          "healthStatus": healthStatus,
          "note": note,
          "isAllergy": isAllergy,
        }),
      );
      if (response.statusCode.toString() == '200') {
        return true;
      } else {
        return false;
      }
    } finally {}
  }

  Future<bool> removeElderByID(int elderID) async {
    try {
      var url =
          Uri.parse("https://els12.herokuapp.com/elder/remove/${elderID}");
      final response = await http.put(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Globals.curUser!.data.token,
          'Accept': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, dynamic>{}),
      );
      if (response.statusCode.toString() == '200') {
        return true;
      } else {
        return false;
      }
    } finally {}
  }
}
