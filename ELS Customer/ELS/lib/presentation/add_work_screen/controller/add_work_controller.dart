import '/core/app_export.dart';
import 'package:els/presentation/add_work_screen/models/add_work_model.dart';
import 'package:flutter/material.dart';

class AddWorkController extends GetxController {
  TextEditingController locationController2 = TextEditingController();

  TextEditingController categoryController2 = TextEditingController();

  TextEditingController genderController2 = TextEditingController();

  TextEditingController fieldrowwrappController3 = TextEditingController();

  Rx<AddWorkModel> addWorkModelObj = AddWorkModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    locationController2.dispose();
    categoryController2.dispose();
    genderController2.dispose();
    fieldrowwrappController3.dispose();
  }
}
