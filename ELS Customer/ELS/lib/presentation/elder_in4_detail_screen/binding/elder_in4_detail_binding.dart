import '../controller/elder_in4_detail_controller.dart';
import 'package:get/get.dart';

class ElderIn4DetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ElderIn4DetailController());
  }
}
