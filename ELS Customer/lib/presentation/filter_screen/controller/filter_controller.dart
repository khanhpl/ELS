import '/core/app_export.dart';
import 'package:els/presentation/filter_screen/models/filter_model.dart';

class FilterController extends GetxController {
  Rx<FilterModel> filterModelObj = FilterModel().obs;

  RxBool isSelectedSwitch = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
