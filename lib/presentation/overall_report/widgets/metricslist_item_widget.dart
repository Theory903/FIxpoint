import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import '../../../widgets/custom_icon_button.dart';
import '../models/metricslist_item_model.dart';

// ignore_for_file: must_be_immutable
class MetricslistItemWidget extends StatelessWidget {
  MetricslistItemWidget(this.metricslistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  MetricslistItemModel metricslistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 4.h,
        right: 30.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 32.h,
      ),
      decoration: BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        borderRadius: BorderRadiusStyle.roundedBorder14,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.03),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              21,
            ),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 54.h,
            width: 54.h,
            decoration: IconButtonStyleHelper.fillLightGreen,
            child: CustomImageView(
              imagePath: metricslistItemModelObj.layerfourOne!,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            metricslistItemModelObj.totalrevenue!,
                            style:
                                CustomTextStyles.bodyMediumRennerBluegray30002,
                          ),
                          SizedBox(height: 12.h),
                          Text(
                            metricslistItemModelObj.k!,
                            style: CustomTextStyles.titleLargeSpartan,
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.h,
                        vertical: 2.h,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.green50,
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Text(
                        metricslistItemModelObj.frameone!,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.labelMediumRennerGreen400,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
