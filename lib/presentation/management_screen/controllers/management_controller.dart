import 'package:fixpoint/presentation/management_screen/models/iphone_13_mini_four_initial_model.dart';
import 'package:fixpoint/presentation/management_screen/models/outletlist_item_model.dart';
import 'package:fixpoint/routes/app_routes.dart';
import 'package:get/get.dart';

class Iphone13MiniFourInitialController extends GetxController {
  var iphone13MiniFourInitialModel = Iphone13MiniFourInitialModel().obs;

  @override
  void onInit() {
    super.onInit();
    // Initialize your data here or call an API
    loadInitialData();
  }

  void loadInitialData() {
    // Example: Initialize the outlet list and other properties
    iphone13MiniFourInitialModel.update((model) {
      model?.outletlistItemList = [
        OutletlistItemModel(),  // Populate with actual data
      ];
    });
  }

  void onTapTeamOne() {
    Get.toNamed(AppRoutes.outletScreen);
  }

  void onTapInventory() {
    // Handle inventory navigation
  }

  void onTapOutletTwo() {
    Get.toNamed(AppRoutes.overallReportScreen);
  }
}
