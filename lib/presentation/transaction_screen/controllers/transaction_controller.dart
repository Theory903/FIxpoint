// lib/presentation/transaction/controllers/transaction_controller.dart

import 'package:get/get.dart';
import '../models/transaction_model.dart';
import 'package:flutter/material.dart';

class TransactionController extends GetxController with GetSingleTickerProviderStateMixin {
  late TabController tabviewController;
  var transactionModelObj = TransactionModel().obs;

  @override
  void onInit() {
    super.onInit();
    tabviewController = TabController(length: 4, vsync: this);
    // Initialize any other data if necessary
  }

  @override
  void onClose() {
    tabviewController.dispose();
    super.onClose();
  }
}
