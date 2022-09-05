import '../controller/personal_infour_controller.dart';
import 'package:get/get.dart';

class PersonalInfourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PersonalInfourController());
  }
}
