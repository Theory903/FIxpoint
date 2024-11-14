import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import '../models/statisticslist_item_model.dart';

// ignore_for_file: must_be_immutable
class StatisticslistItemWidget extends StatelessWidget {
  StatisticslistItemWidget(this.statisticslistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  StatisticslistItemModel statisticslistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 10.h,
      ),
      decoration: BoxDecoration(
        color: appTheme.deepPurple100,
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: statisticslistItemModelObj.image!,
                  height: 34.h,
                  width: 34.h,
                ),
                SizedBox(width: 14.h),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 6.h),
                    child: Text(
                      statisticslistItemModelObj.sixtyfive!,
                      style: CustomTextStyles.titleSmallIndigoA100,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10.h),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_rs".tr,
                  style: CustomTextStyles.labelMediumBlack900,
                ),
                TextSpan(
                  text: " ",
                ),
                TextSpan(
                  text: "lbl_20_610".tr,
                  style: CustomTextStyles.labelLargeBlack900SemiBold,
                ),
                TextSpan(
                  text: "lbl".tr,
                  style: CustomTextStyles.titleSmallSemiBold_1,
                )
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 10.h),
          Text(
            statisticslistItemModelObj.revenue!,
            style: CustomTextStyles.labelLargeBluegray90005_1,
          ),
          SizedBox(height: 2.h)
        ],
      ),
    );
  }
}
