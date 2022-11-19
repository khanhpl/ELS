import 'dart:async';
import 'dart:convert';

import 'package:els_cus_mobile/core/models/user_data_model.dart';
import 'package:http/http.dart' as http;
import '../core/models/customer_detail_model.dart';
import '../core/utils/globals.dart' as Globals;
import '../core/validators/validations.dart';

class PersonalInfoBloc {
  final StreamController _fullNameController = StreamController();
  final StreamController _emailController = StreamController();
  final StreamController _dobController = StreamController();
  final StreamController _addressController = StreamController();
  final StreamController _phoneController = StreamController();
  final StreamController _curPassController = StreamController();
  final StreamController _newPassController = StreamController();
  final StreamController _reNewPassController = StreamController();

  Stream get fullNameStream => _fullNameController.stream;

  Stream get emailStream => _emailController.stream;

  Stream get dobStream => _dobController.stream;

  Stream get addressStream => _addressController.stream;

  Stream get phoneStream => _phoneController.stream;

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

  Future<CustomerDetailModel> getCustomerDetailByEmail() async {
    try {
      var url = Uri.parse(
          "https://els12.herokuapp.com/customer/get-by-email/${Globals.curUser!.data.email}");
      final response = await http.get(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Globals.curUser!.data.token,
          'Accept': 'application/json; charset=UTF-8',
        },
      );
      if (response.statusCode.toString() == '200') {
        return CustomerDetailModel.fromJson(json.decode(response.body));
      } else {
        throw Exception('Unable to fetch customer detail from the REST API');
      }
    } finally {}
  }

  Future<bool> updateInfo(
      String name,
      String gender,
      String dob,
      String address,
      String phone,
      String frontIdImgUrl,
      String backIdImgUrl,
      String avatarImgUrl) async {
    try {
      var url = Uri.parse("https://els12.herokuapp.com/customer/update");
      final response = await http.put(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Globals.curUser!.data.token,
          'Accept': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          "email": Globals.curUser!.data.email,
          "address": address,
          "dob": dob,
          "fullName": name,
          "gender": gender,
          "phone": phone,
          "frontIdImgUrl": frontIdImgUrl,
          "backIdImgUrl": backIdImgUrl,
          "avatarImgUrl": avatarImgUrl
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
}
