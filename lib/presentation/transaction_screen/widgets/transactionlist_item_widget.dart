import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import '../../../widgets/custom_icon_button.dart';
import '../models/transactionlist_item_model.dart';

// ignore_for_file: must_be_immutable
class TransactionlistItemWidget extends StatelessWidget {
  TransactionlistItemWidget(this.transactionlistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  TransactionlistItemModel transactionlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 48.h,
          width: 48.h,
          padding: EdgeInsets.all(12.h),
          decoration: IconButtonStyleHelper.fillGrayTL12,
          child: CustomImageView(
            imagePath: transactionlistItemModelObj.settingsOne!,
          ),
        ),
        SizedBox(width: 16.h),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                transactionlistItemModelObj.salary!,
                style: CustomTextStyles.titleSmallRobotoPrimary,
              ),
              SizedBox(height: 6.h),
              Text(
                transactionlistItemModelObj.payment!,
                style: CustomTextStyles.labelLargeRoboto_1,
              )
            ],
          ),
        ),
        SizedBox(width: 16.h),
        Text(
          transactionlistItemModelObj.rs999!,
          style: CustomTextStyles.titleSmallRobotoPrimary,
        )
      ],
    );
  }
}
