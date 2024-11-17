import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppNavigationController extends GetxController {
  // Define any state variables or methods if needed
}

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Initialize the controller using Get.put
    final controller = Get.put(AppNavigationController());

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              // Header Section
              Container(
                color: const Color(0xFFFFFFFF),
                child: Column(
                  children: [
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: Text(
                        "App Navigation",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 20.fSize,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h, right: 20.h),
                      child: Text(
                        "Check your app's UI from the below demo screens of your app.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFF888888),
                          fontSize: 16.fSize,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Divider(
                      height: 1.h,
                      thickness: 1.h,
                      color: const Color(0xFF000000),
                    ),
                  ],
                ),
              ),
              // List of Screens
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    color: const Color(0xFFFFFFFF),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Landing Screen",
                          routeName: AppRoutes.landingScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login Choice",
                          routeName: AppRoutes.loginChoiceScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login Page",
                          routeName: AppRoutes.loginPageScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Side Menu",
                          routeName: AppRoutes.sidemenuScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Owner Notification",
                          routeName: AppRoutes.OwnerNotificationScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Owner Bill Payment",
                          routeName: AppRoutes.ownerbillpaymentScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Owner Wishlist",
                          routeName: AppRoutes.ownerwishlistScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "General Setting",
                          routeName: AppRoutes.generalSettingScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Management",
                          routeName: AppRoutes.managementScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Outlet",
                          routeName: AppRoutes.outletScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Work Assign",
                          routeName: AppRoutes.workassignScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Assign",
                          routeName: AppRoutes.assignScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Schedule",
                          routeName: AppRoutes.scheduleScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Review",
                          routeName: AppRoutes.OwnerDashboardPage,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Transaction",
                          routeName: AppRoutes.transactionScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Pay",
                          routeName: AppRoutes.payScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Washing",
                          routeName: AppRoutes.washingScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payment Success - Dialog",
                          routeName: AppRoutes.payScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notification",
                          routeName: AppRoutes.NotificationScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Chat Assistant - Send Document",
                          routeName: AppRoutes.chatAssistantSendDocumentScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile",
                          routeName: AppRoutes.profileScreen,
                        ),
                        // Add more screens as needed
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Widget to build each screen title entry
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    required String routeName,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle(routeName);
      },
      child: Container(
        color: const Color(0xFFFFFFFF),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                screenTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Divider(
              height: 1.h,
              thickness: 1.h,
              color: const Color(0xFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Navigation method using GetX
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
