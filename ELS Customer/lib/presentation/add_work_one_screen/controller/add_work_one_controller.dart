import '/core/app_export.dart';
import 'package:els/presentation/add_work_one_screen/models/add_work_one_model.dart';
import 'package:flutter/material.dart';

class AddWorkOneController extends GetxController {
  TextEditingController locationController = TextEditingController();

  TextEditingController categoryController = TextEditingController();

  TextEditingController genderController = TextEditingController();

  TextEditingController fieldrowwrappController = TextEditingController();

  Rx<AddWorkOneModel> addWorkOneModelObj = AddWorkOneModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    locationController.dispose();
    categoryController.dispose();
    genderController.dispose();
    fieldrowwrappController.dispose();
  }
}
