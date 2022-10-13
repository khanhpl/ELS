import 'dart:async';

import 'package:els_cus_mobile/core/validators/validations.dart';
import 'package:http/http.dart' as http;
class SignUpBloc{
  final StreamController _emailController = StreamController();
  final StreamController _passController = StreamController();
  final StreamController _fullnameController = StreamController();
  final StreamController _rePassController = StreamController();
  Stream get fullnameStream => _fullnameController.stream;
  Stream get rePassStream => _rePassController.stream;
  Stream get emailStream => _emailController.stream;
  Stream get passStream => _passController.stream;
  bool isValidInput(String fullname, String email, String pass, String rePass){
    bool isValid = false;
    bool fullnameValid = false;
    bool userValid = false;
    bool passValid = false;
    bool rePassValid = false;
    if(fullname.isEmpty){
      _fullnameController.sink.addError("Họ và tên không thể để trống");
      fullnameValid = false;
    }else{
      _fullnameController.sink.add("OK");
      fullnameValid = true;
    }
    if(!Validations.isValidEmail(email)){

      _emailController.sink.addError("Email không hợp lệ!");
      userValid = false;
    }else{
      _emailController.sink.add("OK");
      userValid = true;
    }
    if(!Validations.isValidPassword(pass)){
      _passController.sink.addError("Mật khẩu phải có tối thiểu 8 ký tự và bao gồm chữ thường, chữ in hoa và số");
      passValid = false;
    }else{
      _passController.sink.add("OK");
      passValid = true;
    }

    if(pass != rePass){
      _rePassController.sink.addError("Mật khẩu nhập lại không trùng khớp");
      rePassValid = false;
    }else{
      _rePassController.sink.add("OK");
      rePassValid = true;
    }
    if(userValid && passValid && fullnameValid && rePassValid){
      isValid = true;
    }
    return isValid;
  }
}