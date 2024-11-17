import 'package:get/get.dart';
import '../models/outletlist_item_model.dart';

class OutletController extends GetxController {
  // Observable to store the selected outlet
  var selectedOutlet = Rx<OutletlistItemModel?>(null);

  // Method to select an outlet
  void selectOutlet(OutletlistItemModel outlet) {
    selectedOutlet.value = outlet;
    // You can add other logic here, like navigating to a new screen
    // or updating some other UI elements based on the selected outlet
    update(); // To update the UI if needed
  }

  // You can add other actions or methods to update or fetch outlet data
  // For example, updating an outlet's people counter or any other field:
  void updatePeopleCounter(String newCounter) {
    if (selectedOutlet.value != null) {
      selectedOutlet.value!.peopleCounter.value = newCounter;
      update(); // Call update to refresh the UI
    }
  }

  // You can also provide an initial setup if needed (like fetching data from an API)
  @override
  void onInit() {
    super.onInit();
    // Initialize any data or API calls here
  }

  // Optionally, you can add methods to reset or clear the selected outlet
  void clearSelectedOutlet() {
    selectedOutlet.value = null;
    update(); // To update the UI
  }
}
