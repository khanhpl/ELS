import '/core/app_export.dart';
import 'package:els/presentation/bookings2_screen/models/bookings2_model.dart';
import 'package:flutter/material.dart';

class Bookings2Controller extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<Bookings2Model> bookings2ModelObj = Bookings2Model().obs;

  late TabController segmentController =
      Get.put(TabController(vsync: this, length: 2));

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
