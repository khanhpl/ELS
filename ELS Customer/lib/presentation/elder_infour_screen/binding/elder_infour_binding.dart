import '../controller/elder_infour_controller.dart';
import 'package:get/get.dart';

class ElderInfourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ElderInfourController());
  }
}
