import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../models/notifcation_one_item_model.dart';

// ignore_for_file: must_be_immutable
class NotifcationOneItemWidget extends StatelessWidget {
  NotifcationOneItemWidget(this.notifcationOneItemModelObj, {Key? key})
      : super(
          key: key,
        );

  NotifcationOneItemModel notifcationOneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgClockBlack900,
          height: 24.h,
          width: 26.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(
            notifcationOneItemModelObj.tasktimeOne!,
            style: CustomTextStyles.bodyLargeBlack900,
          ),
        ),
        Spacer(),
        _buildTaskTimeButton(context)
      ],
    );
  }

  /// Section Widget
  Widget _buildTaskTimeButton(BuildContext context) {
    return CustomElevatedButton(
      height: 36.h,
      width: 108.h,
      text: "lbl_today_at_08_20".tr,
      buttonStyle: CustomButtonStyles.fillGrayTL6,
      buttonTextStyle: CustomTextStyles.bodySmallLatoBlack900,
    );
  }
}
