import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/ownernotification_bloc.dart';
import 'models/ownernotification_model.dart';
import 'models/todaynotifications_item_model.dart';
import 'models/yesterdaynotifications_item_model.dart';
import 'widgets/todaynotifications_item_widget.dart';
import 'widgets/yesterdaynotifications_item_widget.dart';

class OwnernotificationScreen extends StatelessWidget {
  const OwnernotificationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OwnernotificationBloc>(
      create: (context) => OwnernotificationBloc(OwnernotificationState(
        ownernotificationModelObj: OwnernotificationModel(),
      ))
        ..add(OwnernotificationInitialEvent()),
      child: OwnernotificationScreen(),
    );
  }

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
            mainAxisSize: MainAxisSize.max,
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
              _buildYesterdayNotifications(context)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
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
          onTapArrowleftone(context);
        },
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_notifications".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildTodayNotifications(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: BlocSelector<OwnernotificationBloc, OwnernotificationState,
          OwnernotificationModel?>(
        selector: (state) => state.ownernotificationModelObj,
        builder: (context, ownernotificationModelObj) {
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
            itemCount:
                ownernotificationModelObj?.todaynotificationsItemList.length ??
                    0,
            itemBuilder: (context, index) {
              TodaynotificationsItemModel model = ownernotificationModelObj
                      ?.todaynotificationsItemList[index] ??
                  TodaynotificationsItemModel();
              return TodaynotificationsItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildYesterdayNotifications(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 6.h),
        child: BlocSelector<OwnernotificationBloc, OwnernotificationState,
            OwnernotificationModel?>(
          selector: (state) => state.ownernotificationModelObj,
          builder: (context, ownernotificationModelObj) {
            return ListView.separated(
              padding: EdgeInsets.zero,
              physics: BouncingScrollPhysics(),
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
              itemCount: ownernotificationModelObj
                      ?.yesterdaynotificationsItemList.length ??
                  0,
              itemBuilder: (context, index) {
                YesterdaynotificationsItemModel model =
                    ownernotificationModelObj
                            ?.yesterdaynotificationsItemList[index] ??
                        YesterdaynotificationsItemModel();
                return YesterdaynotificationsItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
