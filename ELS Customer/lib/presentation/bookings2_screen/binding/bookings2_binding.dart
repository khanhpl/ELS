import '../controller/bookings2_controller.dart';
import 'package:get/get.dart';

class Bookings2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Bookings2Controller());
  }
}
