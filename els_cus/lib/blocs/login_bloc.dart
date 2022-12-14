import 'dart:async';
import 'dart:convert';
import 'package:els_cus_mobile/core/models/user_model.dart';
import 'package:els_cus_mobile/core/validators/validations.dart';
import '../core/utils/globals.dart' as Globals;
import 'package:http/http.dart' as http;

class LoginBloc {
  final StreamController _emailController = StreamController();
  final StreamController _passController = StreamController();

  Stream get emailStream => _emailController.stream;

  Stream get passStream => _passController.stream;

  bool isValidInput(String email, String pass) {
    bool isValid = false;
    bool userValid = false;
    bool passValid = false;
    if (!Validations.isValidEmail(email)) {
      userValid = false;
      _emailController.sink.addError("Email không hợp lệ!");
    } else {
      userValid = true;
      _emailController.sink.add("OK");
    }
    if (!Validations.isValidPassword(pass)) {
      passValid = false;
      _passController.sink.addError(
          "Mật khẩu phải có tối thiểu 8 ký tự và bao gồm chữ thường, chữ in hoa và số");
    } else {
      passValid = true;
      _passController.sink.add("OK");
    }

    if (userValid && passValid) {
      isValid = true;
    } else {
      isValid = false;
    }

    return isValid;
  }

  Future<bool> checkCurUser(String email, String password) async {
    try {
      var url = Uri.parse("https://els12.herokuapp.com/auth");
      final response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          <String, String>{
            'email': email,
            'password': password,
            "token": Globals.DeviceToken!,
          },
        ),
      );
      if (response.statusCode.toString() == '200') {
        if (UserModel.fromJson(json.decode(response.body))
                .data
                .role
                .toUpperCase() ==
            "CUSTOMER") {
          Globals.curUser = UserModel.fromJson(json.decode(response.body));
          return true;
        } else {
          return false;
        }
      } else {
        return false;
      }
    } finally {}
  }

  Future<bool> checkCurGmailUser(
      String email, String fullName, String dob, String gender) async {
    var url = Uri.parse("https://els12.herokuapp.com/auth/login-gmail");
    final response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
        <String, String>{
          "email": email,
          "fullName": fullName,
          "dob": dob,
          "gender": gender
        },
      ),
    );
    if (response.statusCode.toString() == '200') {
      if (UserModel.fromJson(json.decode(response.body))
              .data
              .role
              .toUpperCase() ==
          "CUSTOMER") {
        Globals.curUser = UserModel.fromJson(json.decode(response.body));
        return true;
      } else {
        return false;
      }
    }else{
      return false;
    }
  }

  Future<bool> forgotPassword(String email) async {
    try {
      var url = Uri.parse("https://els12.herokuapp.com/auth/forgot-password");
      final response = await http.put(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          <String, dynamic>{
            "email": email,
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
