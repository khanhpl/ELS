import 'dart:async';
import 'dart:convert';
import 'package:jwt_decode/jwt_decode.dart';
import 'package:http/http.dart' as http;
class LoginBloc {
  final StreamController _emailController = StreamController();
  final StreamController _passController = StreamController();

  Stream get emailStream => _emailController.stream;
  Stream get passStream => _passController.stream;
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
        // Globals.userEmail = Jwt.parseJwt(response.body)['Email'];
        // Globals.customerId = Jwt.parseJwt(response.body)['Id'];
        // Globals.userName = Jwt.parseJwt(response.body)['FullName'];
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