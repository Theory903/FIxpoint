import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import '../models/yesterdaynotifications_item_model.dart';

// ignore_for_file: must_be_immutable
class YesterdaynotificationsItemWidget extends StatelessWidget {
  YesterdaynotificationsItemWidget(this.yesterdaynotificationsItemModelObj,
      {Key? key})
      : super(
          key: key,
        );

  YesterdaynotificationsItemModel yesterdaynotificationsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle72,
          height: 46.h,
          width: 48.h,
          radius: BorderRadius.circular(
            10.h,
          ),
          margin: EdgeInsets.only(bottom: 2.h),
        ),
        SizedBox(width: 16.h),
        Expanded(
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  yesterdaynotificationsItemModelObj.shippingison!,
                  style: CustomTextStyles.bodySmallInter_1,
                ),
                SizedBox(height: 14.h),
                Text(
                  yesterdaynotificationsItemModelObj.time!,
                  style: CustomTextStyles.bodySmallInterGray50001,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
