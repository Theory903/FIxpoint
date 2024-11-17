import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'controllers/ownernotification_controller.dart';
import 'models/todaynotifications_item_model.dart';
import 'models/yesterdaynotifications_item_model.dart';
import 'widgets/todaynotifications_item_widget.dart';
import 'widgets/yesterdaynotifications_item_widget.dart';

class OwnernotificationScreen extends StatelessWidget {
  final OwnernotificationController controller = Get.put(OwnernotificationController());

  OwnernotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10002,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 24.h,
            top: 20.h,
            right: 24.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_today2".tr,
                style: CustomTextStyles.bodySmallInterPrimaryContainer,
              ),
              SizedBox(height: 14.h),
              _buildTodayNotifications(context),
              SizedBox(height: 32.h),
              Text(
                "lbl_yesterday".tr,
                style: CustomTextStyles.bodySmallInterPrimaryContainer,
              ),
              SizedBox(height: 16.h),
              _buildYesterdayNotifications(context),
            ],
          ),
        ),
      ),
    );
  }

  /// AppBar Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
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
          onTapArrowleftone();
        },
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_notifications".tr,
      ),
    );
  }

  /// Today Notifications Widget
  Widget _buildTodayNotifications(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: Obx(() {
        var todayNotifications = controller.ownernotificationModelObj.value.todaynotificationsItemList;
        return ListView.separated(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 9.0.h),
              child: Divider(
                height: 1.h,
                thickness: 1.h,
                color: appTheme.gray40004,
              ),
            );
          },
          itemCount: todayNotifications.length,
          itemBuilder: (context, index) {
            TodaynotificationsItemModel model = todayNotifications[index];
            return TodaynotificationsItemWidget(
              model,
            );
          },
        );
      }),
    );
  }

  /// Yesterday Notifications Widget
  Widget _buildYesterdayNotifications(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 6.h),
        child: Obx(() {
          var yesterdayNotifications = controller.ownernotificationModelObj.value.yesterdaynotificationsItemList;
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            separatorBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 9.0.h),
                child: Divider(
                  height: 1.h,
                  thickness: 1.h,
                  color: appTheme.gray40004,
                ),
              );
            },
            itemCount: yesterdayNotifications.length,
            itemBuilder: (context, index) {
              YesterdaynotificationsItemModel model = yesterdayNotifications[index];
              return YesterdaynotificationsItemWidget(
                model,
              );
            },
          );
        }),
      ),
    );
  }

  /// Navigates to the previous screen.
  void onTapArrowleftone() {
    Get.back();
  }
}
