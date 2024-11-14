import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_switch.dart';
import 'bloc/general_setting_bloc.dart';
import 'models/general_setting_model.dart';

class GeneralSettingScreen extends StatelessWidget {
  const GeneralSettingScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<GeneralSettingBloc>(
      create: (context) => GeneralSettingBloc(GeneralSettingState(
        generalSettingModelObj: GeneralSettingModel(),
      ))
        ..add(GeneralSettingInitialEvent()),
      child: GeneralSettingScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 24.h,
            top: 40.h,
            right: 24.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [_buildContentSection(context)],
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
        text: "lbl_general_setting".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildContentSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconButton(
                  height: 40.h,
                  width: 40.h,
                  padding: EdgeInsets.all(10.h),
                  decoration: IconButtonStyleHelper.fillGrayTL12,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgVector,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "msg_default_notification".tr,
                    style: CustomTextStyles.titleSmallRobotoIndigo90001_1,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgChevronRight,
                  height: 16.h,
                  width: 18.h,
                )
              ],
            ),
          ),
          SizedBox(height: 26.h),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconButton(
                  height: 40.h,
                  width: 40.h,
                  padding: EdgeInsets.all(10.h),
                  decoration: IconButtonStyleHelper.fillGrayTL12,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgSearch,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "msg_manage_notifications".tr,
                    style: CustomTextStyles.titleSmallRobotoIndigo90001_1,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgChevronRight,
                  height: 16.h,
                  width: 18.h,
                )
              ],
            ),
          ),
          SizedBox(height: 26.h),
          SizedBox(
            width: double.maxFinite,
            child: Divider(
              color: appTheme.gray600,
            ),
          ),
          SizedBox(height: 26.h),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: _buildBillsCalendar(
                    context,
                    billscalendar: "msg_default_notification".tr,
                    youwanttoOne: "msg_you_want_to_receive".tr,
                  ),
                ),
                BlocSelector<GeneralSettingBloc, GeneralSettingState, bool?>(
                  selector: (state) => state.isSelectedSwitch,
                  builder: (context, isSelectedSwitch) {
                    return CustomSwitch(
                      value: isSelectedSwitch,
                      onChange: (value) {
                        context
                            .read<GeneralSettingBloc>()
                            .add(ChangeSwitchEvent(value: value));
                      },
                    );
                  },
                )
              ],
            ),
          ),
          SizedBox(height: 26.h),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: _buildBillsCalendar(
                    context,
                    billscalendar: "lbl_bills_calendar".tr,
                    youwanttoOne: "msg_you_want_to_receive2".tr,
                  ),
                ),
                BlocSelector<GeneralSettingBloc, GeneralSettingState, bool?>(
                  selector: (state) => state.isSelectedSwitch1,
                  builder: (context, isSelectedSwitch1) {
                    return CustomSwitch(
                      value: isSelectedSwitch1,
                      onChange: (value) {
                        context
                            .read<GeneralSettingBloc>()
                            .add(ChangeSwitch1Event(value: value));
                      },
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildBillsCalendar(
    BuildContext context, {
    required String billscalendar,
    required String youwanttoOne,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          billscalendar,
          style: CustomTextStyles.titleSmallRobotoIndigo90001_1.copyWith(
            color: appTheme.indigo90001,
          ),
        ),
        SizedBox(height: 6.h),
        SizedBox(
          width: 172.h,
          child: Text(
            youwanttoOne,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodyLargeRobotoBluegray30001.copyWith(
              color: appTheme.gray200,
              height: 1.50,
            ),
          ),
        )
      ],
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
