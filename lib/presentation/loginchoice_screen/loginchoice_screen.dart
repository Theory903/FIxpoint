import 'package:flutter/material.dart';
import 'package:fixpoint/core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/loginchoice_bloc.dart';
import 'models/loginchoice_model.dart';

class LoginchoiceScreen extends StatelessWidget {
  const LoginchoiceScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginchoiceBloc>(
      create: (context) => LoginchoiceBloc(LoginchoiceState(
        loginchoiceModelObj: LoginchoiceModel(),
      ))
        ..add(LoginchoiceInitialEvent()),
      child: LoginchoiceScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginchoiceBloc, LoginchoiceState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray10002,
            appBar: _buildAppBar(context),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 50.h),
              child: Column(
                children: [
                  SizedBox(height: 64.h),
                  _buildSelectTypeSection(context),
                  SizedBox(height: 26.h),
                  Text(
                    "msg_welcome_to_fixpoint".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyMediumRobotoGray400.copyWith(
                      height: 1.20,
                    ),
                  ),
                  SizedBox(height: 52.h),
                  Expanded(
                    child: Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.symmetric(horizontal: 12.h),
                      child: Column(
                        children: [
                          _buildOwnerEmployeeOptions(context),
                          Spacer(),
                          CustomElevatedButton(
                            text: "lbl_select".tr,
                            buttonStyle: CustomButtonStyles.outlineBlueGray,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 64.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftBlack900,
        margin: EdgeInsets.only(left: 24.h, top: 8.h, bottom: 8.h),
        onTap: () {
          NavigatorService.goBack();
        },
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_options".tr,
      ),
    );
  }

  Widget _buildSelectTypeSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 12.h),
      child: Column(
        children: [
          Text(
            "lbl_select_type".tr,
            style: CustomTextStyles.titleLarge_1,
          )
        ],
      ),
    );
  }

  Widget _buildOwnerEmployeeOptions(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: _buildOptionCard(
              context,
              onTap: () {
                NavigatorService.pushNamed(AppRoutes.loginPageScreen);
              },
              imagePath: ImageConstant.imgGroup1,
              title: "lbl_owner".tr,
              description: "msg_lorem_ipsum_dolor".tr,
            ),
          ),
          SizedBox(width: 18.h),
          Expanded(
            child: _buildOptionCard(
              context,
              onTap: () {
                navigateToIPhone13MiniSplaTwentyFour(context);
              },
              imagePath: ImageConstant.imgGroup2,
              title: "lbl_employee".tr,
              description: "msg_lorem_ipsum_dolor".tr,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOptionCard(
    BuildContext context, {
    required VoidCallback onTap,
    required String imagePath,
    required String title,
    required String description,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadiusStyle.roundedBorder10,
          border: Border.all(
            color: appTheme.blueGray10004,
            width: 1.h,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 4.h),
            CustomIconButton(
              height: 60.h,
              width: 58.h,
              padding: EdgeInsets.all(10.h),
              decoration: IconButtonStyleHelper.fillGreen,
              child: CustomImageView(
                imagePath: imagePath,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              title,
              style: CustomTextStyles.labelLargePrimary_1,
            ),
            SizedBox(height: 10.h),
            Text(
              description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodySmallInterGray400.copyWith(
                height: 1.06,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void navigateToIPhone13MiniSplaTwentyFour(BuildContext context) {
    // Implement navigation logic here
  }
}