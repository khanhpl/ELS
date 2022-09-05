import '../controller/connect_controller.dart';
import 'package:get/get.dart';

class ConnectBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConnectController());
  }
}
