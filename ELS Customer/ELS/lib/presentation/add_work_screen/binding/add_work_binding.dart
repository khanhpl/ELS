import '../controller/add_work_controller.dart';
import 'package:get/get.dart';

class AddWorkBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddWorkController());
  }
}
