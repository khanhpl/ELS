import '../controller/add_work_one_controller.dart';
import 'package:get/get.dart';

class AddWorkOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddWorkOneController());
  }
}
