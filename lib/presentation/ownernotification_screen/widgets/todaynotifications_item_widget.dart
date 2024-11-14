import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import '../models/todaynotifications_item_model.dart';

// ignore_for_file: must_be_immutable
class TodaynotificationsItemWidget extends StatelessWidget {
  TodaynotificationsItemWidget(this.todaynotificationsItemModelObj, {Key? key})
      : super(
          key: key,
        );

  TodaynotificationsItemModel todaynotificationsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle70,
            height: 46.h,
            width: 48.h,
            radius: BorderRadius.circular(
              10.h,
            ),
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_you_received_a_payment2".tr,
                        style: CustomTextStyles.bodySmallInter,
                      ),
                      TextSpan(
                        text: "lbl_rs_10000".tr,
                        style: CustomTextStyles.labelLargePrimarySemiBold_1,
                      ),
                      TextSpan(
                        text: "lbl_from".tr,
                        style: CustomTextStyles.bodySmallInter,
                      ),
                      TextSpan(
                        text: "lbl_lorem_ipsum".tr,
                        style: CustomTextStyles.labelLargePrimarySemiBold_1,
                      )
                    ],
                  ),
                  textAlign: TextAlign.left,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 2.h),
                Text(
                  todaynotificationsItemModelObj.time!,
                  style: CustomTextStyles.bodySmallInterGray50001,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
