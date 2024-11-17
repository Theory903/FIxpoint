import 'package:get/get.dart';
import '../models/sidemenu_model.dart';

class SidemenuController extends GetxController {
  var sidemenuModelObj = SidemenuModel().obs;
  var isDarkMode = false.obs;

  @override
  void onInit() {
    super.onInit();
    // Initialize your data here if needed
  }

  void toggleDarkMode(bool value) {
    isDarkMode.value = value;
    // Implement your theme change logic here
  }
}
