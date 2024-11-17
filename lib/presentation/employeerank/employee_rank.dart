import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'controllers/employee_rank_controller.dart';
import 'scrollview_tab2_page.dart';

class EmployeeRankScreen extends StatelessWidget {
  final EmployeeRankController controller = Get.put(EmployeeRankController());

  EmployeeRankScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: appTheme.gray10002,
      appBar: _buildAppBar(context, theme),
      body: Column(
        children: [
          SizedBox(height: 12.h),
          _buildTimePeriodTabs(context, theme, appTheme),
          Expanded(
            child: TabBarView(
              controller: controller.tabController,
              children: [
                ScrollviewTab2Page(),
                ScrollviewTab2Page(),
                ScrollviewTab2Page(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// AppBar Widget
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
          Get.back();
        },
      ),
      centerTitle: true,
      title: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "lbl_outlet2".tr,
              style: theme.textTheme.titleLarge,
            ),
            TextSpan(
              text: "lbl_12".tr,
              style: CustomTextStyles.titleSmallRobotoBold,
            ),
          ],
        ),
        textAlign: TextAlign.left,
      ),
    );
  }

  /// TabBar Widget
  Widget _buildTimePeriodTabs(
      BuildContext context, ThemeData theme,appTheme) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.h),
      child: Container(
        decoration: BoxDecoration(
          color: theme.colorScheme.onErrorContainer,
          borderRadius: BorderRadius.circular(20.h),
          boxShadow: [
            BoxShadow(
              color: appTheme.black900.withOpacity(0.25),
              spreadRadius: 2.h,
              blurRadius: 2.h,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.h),
          child: TabBar(
            controller: controller.tabController,
            labelColor: theme.colorScheme.onSecondaryContainer,
            unselectedLabelColor: appTheme.gray70002,
            indicator: BoxDecoration(
              color: appTheme.gray5001,
            ),
            tabs: [
              Tab(text: "lbl_week".tr),
              Tab(text: "lbl_month".tr),
              Tab(text: "lbl_year".tr),
            ],
          ),
        ),
      ),
    );
  }
}
