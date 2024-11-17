import 'package:get/get.dart';

class LoginchoiceController extends GetxController {
  // Define any state variables if necessary
  // For example:
  // var selectedOption = ''.obs;

  // Define functions for logic, like on selecting an option
  void onOwnerSelected() {
    Get.toNamed('/login_page_screen'); // Navigate to owner login
  }

  void onEmployeeSelected() {
    Get.toNamed('/iphone_13_mini_spla_24'); // Adjust route name as needed
  }
}
