import '/core/app_export.dart';
import 'package:els/presentation/onboarding_one_bottomsheet/models/onboarding_one_model.dart';

class OnboardingOneController extends GetxController {
  Rx<OnboardingOneModel> onboardingOneModelObj = OnboardingOneModel().obs;

  Rx<int> silderIndex = 0.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
