import 'dart:async';
import 'dart:convert';

import 'package:els_sitter/core/models/sitter_detail_model.dart';
import 'package:http/http.dart' as http;
import '../core/utils/globals.dart' as Globals;
import '../core/validators/validations.dart';

class SitterBlocs {
  final StreamController _curPassController = StreamController();
  final StreamController _newPassController = StreamController();
  final StreamController _reNewPassController = StreamController();

  Stream get curPassStream => _curPassController.stream;

  Stream get newPassStream => _newPassController.stream;

  Stream get reNewPassStream => _reNewPassController.stream;

  bool isValidInput(String curPass, String newPass, String reNewPass) {
    bool isValid = false;
    bool curPassValid = false;
    bool newPassValid = false;
    bool reNewPassValid = false;

    if (curPass.isEmpty) {
      _curPassController.sink.addError("Vui lòng nhập mật khẩu hiện tại");
      curPassValid = false;
    } else {
      _curPassController.sink.add("OK");
      curPassValid = true;
    }

    if (newPass.isEmpty) {
      _newPassController.sink.addError("Vui lòng nhập mật khẩu mới");
      newPassValid = false;
    } else {
      if (!Validations.isValidPassword(newPass)) {
        _newPassController.sink.addError(
            "Mật khẩu phải có tối thiểu 8 ký tự và bao gồm chữ thường, chữ in hoa và số");
        newPassValid = false;
      } else {
        _newPassController.sink.add("OK");
        newPassValid = true;
      }
    }

    if (newPass != reNewPass) {
      _reNewPassController.sink.addError("Mật khẩu nhập lại không trùng khớp");
      reNewPassValid = false;
    } else {
      _reNewPassController.sink.add("OK");
      reNewPassValid = true;
    }

    if (curPassValid && newPassValid && reNewPassValid) {
      isValid = true;
    }
    return isValid;
  }

  Future<bool> changePassword(String oldPass, String newPass) async {
    try {
      var url =
          Uri.parse("https://els12.herokuapp.com/customer/change-password");
      final response = await http.put(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Globals.curUser!.data.token,
          'Accept': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          "email": Globals.curUser!.data.email,
          "oldPassword": oldPass,
          "newPassword": newPass
        }),
      );
      if (response.statusCode.toString() == '200') {
        // Globals.curUser=UserDataModel(email: Globals.curUser!.data.email, role: Globals.curUser!.data.role, token: Globals.curUser!.data.token, address: address, dob: dob, fullName: name, gender: gender, phone: phone);
        return true;
      } else {
        return false;
      }
    } finally {}
  }

  Future<SitterDetailModel> getSitterDetailByEmail() async {
    try {
      var url = Uri.parse(
          "https://els12.herokuapp.com/sitter/get-by-email/${Globals.curUser!.data.email}");
      final response = await http.get(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Globals.curUser!.data.token,
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

  Future<bool> updateSitterInfo(String fullname, String dob, String gender,
      String phone, String address, String email, String avatarImgUrl) async {
    try {
      var url = Uri.parse("https://els12.herokuapp.com/sitter/update");
      final response = await http.put(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Globals.curUser!.data.token,
          'Accept': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          <String, String>{
            "fullName": fullname,
            "dob": dob,
            "gender": gender,
            "phone": phone,
            "address": address,
            "email": email,
            "avatarImgUrl": avatarImgUrl
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
}
