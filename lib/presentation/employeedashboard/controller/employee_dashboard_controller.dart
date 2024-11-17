import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmployeeDashboardController extends GetxController {
  // Observable variable for tab index
  var tabIndex = 0.obs;

  // Tab controller will be created here
  late TabController tabController;

  @override
  void onInit() {
    super.onInit();
    // Initialize TabController
    tabController = TabController(length: 3, vsync: Get.find());
  }

  // Method to change the tab index
  void changeTabIndex(int index) {
    tabIndex.value = index;
  }
}
