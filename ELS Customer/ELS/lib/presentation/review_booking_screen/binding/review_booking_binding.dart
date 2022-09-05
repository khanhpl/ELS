import '../controller/review_booking_controller.dart';
import 'package:get/get.dart';

class ReviewBookingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReviewBookingController());
  }
}
