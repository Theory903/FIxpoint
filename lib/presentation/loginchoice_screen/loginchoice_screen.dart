import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fixpoint/core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import 'controller/loginchoice_controller.dart';

class LoginchoiceScreen extends StatelessWidget {
  const LoginchoiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginchoiceController>(
      init: LoginchoiceController(),
      builder: (controller) {
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
                    Trans("msg_welcome_to_fixpoint").tr,
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
                          _buildOwnerEmployeeOptions(controller),
                          Spacer(),
                          CustomElevatedButton(
                            text: Trans("lbl_select").tr,
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
          Get.back();
        },
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: Trans("lbl_options").tr,
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
            Trans("lbl_select_type").tr,
            style: CustomTextStyles.titleLarge_1,
          )
        ],
      ),
    );
  }

  Widget _buildOwnerEmployeeOptions(LoginchoiceController controller) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: _buildOptionCard(
              onTap: controller.onOwnerSelected,
              imagePath: ImageConstant.imgGroup1,
              title: Trans("lbl_owner").tr,
              description: Trans("msg_lorem_ipsum_dolor").tr,
            ),
          ),
          SizedBox(width: 18.h),
          Expanded(
            child: _buildOptionCard(
              onTap: controller.onEmployeeSelected,
              imagePath: ImageConstant.imgGroup2,
              title: Trans("lbl_employee").tr,
              description: Trans("msg_lorem_ipsum_dolor").tr,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOptionCard({
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
}
