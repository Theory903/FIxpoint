import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import GetX for navigation

import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_image_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../core/app_export.dart'; // Ensure this import for AppRoutes
import 'controller/employee_dashboard_controller.dart'; // Import the controller

class EmployeeDashboardPage extends StatelessWidget {
  const EmployeeDashboardPage({Key? key}) : super(key: key);

  // Static builder method for GetX
  static Widget builder(BuildContext context) {
    // Initialize the controller
    Get.put(EmployeeDashboardController());
    return const EmployeeDashboardPage();
  }

  @override
  Widget build(BuildContext context) {
    // GetX controller
    final EmployeeDashboardController controller = Get.find();

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Column(
          children: [
            _buildTabBar(controller),
            Expanded(
              child: Obx(() {
                // We use Obx to make the TabBarView reactive
                return TabBarView(
                  controller: controller.tabController,
                  children: [
                    _buildTabContent(),
                    _buildTabContent(),
                    _buildTabContent(),
                  ],
                );
              }),
            ),
          ],
        ),
        bottomNavigationBar: CustomBottomBar(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 54.0,  // Assuming 54.h should be a constant for height
      centerTitle: true,
      title: AppbarTitle(text: "Employee Dashboard"),
      actions: [
        AppbarTrailingImageOne(
          imagePath: 'assets/images/imgNotification.png',
          onTap: () => Get.toNamed(AppRoutes.NotificationScreen), // Use Get.toNamed for navigation
        ),
      ],
    );
  }

  Widget _buildTabBar(EmployeeDashboardController controller) {
    return Obx(() {
      return TabBar(
        controller: controller.tabController,
        onTap: (index) {
          controller.changeTabIndex(index); // Use GetX controller to update the tab index
        },
        tabs: const [
          Tab(text: "Today"),
          Tab(text: "Week"),
          Tab(text: "Month"),
        ],
      );
    });
  }

  Widget _buildTabContent() {
    return const Center(
      child: Text("Tab Content Here"),
    );
  }
}
