import '/core/app_export.dart';
import 'package:els/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';

class SignUpController extends GetxController {
  TextEditingController phonenumberController = TextEditingController();

  TextEditingController continuewithGController1 = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    phonenumberController.dispose();
    continuewithGController1.dispose();
  }
}
