import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import '../../../widgets/custom_icon_button.dart';
import '../models/paymentmethodslist_item_model.dart';

// ignore_for_file: must_be_immutable
class PaymentmethodslistItemWidget extends StatelessWidget {
  PaymentmethodslistItemWidget(this.paymentmethodslistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  PaymentmethodslistItemModel paymentmethodslistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 14.h,
      ),
      decoration: BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        borderRadius: BorderRadiusStyle.roundedBorder14,
        border: Border.all(
          color: appTheme.gray200,
          width: 1.h,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 48.h,
            width: 48.h,
            padding: EdgeInsets.all(10.h),
            decoration: IconButtonStyleHelper.fillGrayTL24,
            child: CustomImageView(
              imagePath: paymentmethodslistItemModelObj.userOne!,
            ),
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    paymentmethodslistItemModelObj.paypal!,
                    style: CustomTextStyles.titleMediumRobotoIndigo90001,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    paymentmethodslistItemModelObj.easypayment!,
                    style: CustomTextStyles.labelLargeRoboto_1,
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 16.h),
          CustomImageView(
            imagePath: paymentmethodslistItemModelObj.paypalTwo!,
            height: 24.h,
            width: 24.h,
            radius: BorderRadius.circular(
              12.0.h,
            ),
          )
        ],
      ),
    );
  }
}
