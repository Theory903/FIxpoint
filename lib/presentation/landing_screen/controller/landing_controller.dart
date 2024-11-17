import 'package:get/get.dart';
import '../../../routes/app_routes.dart';

class LandingController extends GetxController {
  // Method to handle navigation to the login choice screen
  void navigateToLoginChoice() {
    print("Navigating to login choice screen...");
    Get.toNamed(AppRoutes.loginChoiceScreen); // Navigate using GetX routing
  }

  @override
  void onInit() {
    super.onInit();
    print("LandingController initialized");
  }
}
