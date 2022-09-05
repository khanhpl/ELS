import '/core/app_export.dart';
import 'package:els/presentation/manage_work_news1_screen/models/manage_work_news1_model.dart';
import 'package:flutter/material.dart';

class ManageWorkNews1Controller extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<ManageWorkNews1Model> manageWorkNews1ModelObj = ManageWorkNews1Model().obs;

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
