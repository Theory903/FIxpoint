import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'controllers/transaction_controller.dart';
import 'iphone3mini_tab2_page.dart';
import 'models/transaction_model.dart';

class TransactionScreen extends StatelessWidget {
  final TransactionController controller = Get.put(TransactionController());

  TransactionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10002,
        appBar: _buildAppBar(context, theme),
        body: Column(
          children: [
            _buildTotalSpendingSection(context, theme, appTheme),
            Expanded(
              child: TabBarView(
                controller: controller.tabviewController,
                children: [
                  Container(), // Replace with your actual content
                  Iphone3miniTab2Page(),
                  Iphone3miniTab2Page(),
                  Iphone3miniTab2Page(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context, ThemeData theme) {
    return CustomAppBar(
      leadingWidth: 64.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftBlack900,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 8.h,
          bottom: 8.h,
        ),
        onTap: () {
          onTapArrowLeft();
        },
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_transaction".tr,
      ),
    );
  }

  Widget _buildTotalSpendingSection(BuildContext context, ThemeData theme, appTheme) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 10.h),
      child: Container(
        padding: EdgeInsets.all(24.h),
        decoration: BoxDecoration(
          color: theme.colorScheme.onErrorContainer,
          borderRadius: BorderRadius.circular(14.h),
          border: Border.all(
            color: appTheme.gray100,
            width: 1.h,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "lbl_total_spending".tr,
              style: CustomTextStyles.titleSmallRobotoGray60002,
            ),
            SizedBox(height: 8.h),
            Text(
              "lbl_rs_9992".tr,
              style: CustomTextStyles.headlineSmallRobotoPrimary,
            ),
            SizedBox(height: 24.h),
            TabBar(
              controller: controller.tabviewController,
              isScrollable: false,
              labelColor: theme.colorScheme.primary,
              labelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w600,
              ),
              unselectedLabelColor: appTheme.gray60002,
              unselectedLabelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
              ),
              indicator: BoxDecoration(
                color: appTheme.gray5001,
                borderRadius: BorderRadius.circular(8.h),
              ),
              tabs: [
                Tab(text: "lbl_day".tr),
                Tab(text: "lbl_week".tr),
                Tab(text: "lbl_month".tr),
                Tab(text: "lbl_year".tr),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void onTapArrowLeft() {
    Get.back();
  }
}
