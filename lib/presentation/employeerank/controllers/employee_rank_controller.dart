// controllers/employee_rank_controller.dart

import 'package:get/get.dart';
import 'package:flutter/material.dart';

class EmployeeRankController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
