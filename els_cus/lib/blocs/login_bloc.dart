import 'dart:async';
import 'dart:convert';
import 'package:els_cus_mobile/core/models/user_data_model.dart';
import 'package:els_cus_mobile/core/models/user_model.dart';
import 'package:els_cus_mobile/core/validators/validations.dart';
import '../core/utils/globals.dart' as Globals;
import 'package:http/http.dart' as http;
class LoginBloc {
  final StreamController _emailController = StreamController();
  final StreamController _passController = StreamController();

  Stream get emailStream => _emailController.stream;
  Stream get passStream => _passController.stream;
  bool isValidInput(String email, String pass){
    bool isValid = false;
    bool userValid = false;
    bool passValid = false;
    if(!Validations.isValidEmail(email)){

      _emailController.sink.addError("Email không hợp lệ!");
      userValid = false;
    }else{
      _emailController.sink.add("OK");
      isValid = true;
    }
    if(!Validations.isValidPassword(pass)){
      _passController.sink.addError("Mật khẩu phải có tối thiểu 8 ký tự và bao gồm chữ thường, chữ in hoa và số");
      passValid = false;
    }else{
      _passController.sink.add("OK");
      passValid = true;
    }
    if(userValid && passValid){
      isValid = true;
    }


    return isValid;
  }
  Future<bool> checkCurUser(String email, String password) async {
    try {
      var url =
      Uri.parse("https://els12.herokuapp.com/auth");
      final response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          <String, String>{
            'username': email,
            'password': password,
          },
        ),
      );
      if (response.statusCode.toString() == '200') {
        String username = json.decode(response.body)['data']['username'];

        String password = '';
        if(json.decode(response.body)['data']['password'] != null){
          password = json.decode(response.body)['data']['password'];
        }
        String role = json.decode(response.body)['data']['role'];
        String bearerToken = json.decode(response.body)['data']['token'];
        UserDataModel data = UserDataModel(username, password, role, bearerToken);
        String successCode = json.decode(response.body)['successCode'];
        String errorCode = '';
        if(json.decode(response.body)['errorCode'] != null){
          errorCode = json.decode(response.body)['errorCode'];
        }
        Globals.curUser = UserModel(successCode, errorCode, data);
        return true;
      } else {
        return false;
      }
    } finally {}
  }
}

// class ResToken {
//   var resToken;
//
//   ResToken({required this.resToken});
//
//   factory ResToken.fromJson(Map<dynamic, dynamic> json) {
//     return ResToken(
//       resToken: json['token'],
//     );
//   }
// }