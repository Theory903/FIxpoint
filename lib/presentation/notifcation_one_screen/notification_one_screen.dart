import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/notifcation_one_bloc.dart';
import 'models/notifcation_one_item_model.dart';
import 'models/notifcation_one_model.dart';
import 'widgets/notifcation_one_item_widget.dart';

class NotifcationOneScreen extends StatelessWidget {
  const NotifcationOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<NotifcationOneBloc>(
      create: (context) => NotifcationOneBloc(NotifcationOneState(
        notifcationOneModelObj: NotifcationOneModel(),
      ))
        ..add(NotifcationOneInitialEvent()),
      child: NotifcationOneScreen(),
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
          padding: EdgeInsets.only(top: 20.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              _buildRecentTasksSection(context),
              SizedBox(height: 32.h),
              SizedBox(
                width: double.maxFinite,
                child: Divider(
                  color: appTheme.black900.withOpacity(0.2),
                ),
              ),
              SizedBox(height: 22.h),
              _buildTaskDetailsSection(context),
              SizedBox(height: 20.h),
              SizedBox(
                width: double.maxFinite,
                child: Divider(),
              ),
              SizedBox(height: 68.h),
              SizedBox(
                width: double.maxFinite,
                child: Divider(),
              ),
              SizedBox(height: 68.h),
              SizedBox(
                width: double.maxFinite,
                child: Divider(),
              )
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
        text: "lbl_task".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentTasksSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 24.h,
        right: 28.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_recent".tr,
            style: CustomTextStyles.titleMediumPoppinsBlack900,
          ),
          SizedBox(height: 18.h),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 16.h,
                  width: 16.h,
                  margin: EdgeInsets.only(top: 4.h),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.errorContainer,
                    borderRadius: BorderRadius.circular(
                      8.h,
                    ),
                    border: Border.all(
                      color: appTheme.black900,
                      width: 1.5.h,
                    ),
                  ),
                ),
                SizedBox(width: 20.h),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_washing".tr,
                          style: CustomTextStyles.titleLargeLatoBlack900Regular,
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          "msg_take_one_step_at".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.titleSmallPoppinsGray40002,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTaskDetailsSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        children: [
          BlocSelector<NotifcationOneBloc, NotifcationOneState,
              NotifcationOneModel?>(
            selector: (state) => state.notifcationOneModelObj,
            builder: (context, notifcationOneModelObj) {
              return ListView.separated(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 18.0.h),
                    child: Divider(
                      height: 1.h,
                      thickness: 1.h,
                      color: theme.colorScheme.onPrimary,
                    ),
                  );
                },
                itemCount:
                    notifcationOneModelObj?.notifcationOneItemList.length ?? 0,
                itemBuilder: (context, index) {
                  NotifcationOneItemModel model =
                      notifcationOneModelObj?.notifcationOneItemList[index] ??
                          NotifcationOneItemModel();
                  return NotifcationOneItemWidget(
                    model,
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
