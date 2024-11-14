import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import '../models/gridelectricity_item_model.dart';

// ignore_for_file: must_be_immutable
class GridelectricityItemWidget extends StatelessWidget {
  GridelectricityItemWidget(this.gridelectricityItemModelObj, {Key? key})
      : super(
          key: key,
        );

  GridelectricityItemModel gridelectricityItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 14.h),
      decoration: BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        borderRadius: BorderRadiusStyle.roundedBorder10,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.08),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: gridelectricityItemModelObj.electricityOne!,
            height: 48.h,
            width: 50.h,
          ),
          SizedBox(height: 18.h),
          Text(
            gridelectricityItemModelObj.electricityTwo!,
            style: CustomTextStyles.labelLargeBlack900_2,
          )
        ],
      ),
    );
  }
}
