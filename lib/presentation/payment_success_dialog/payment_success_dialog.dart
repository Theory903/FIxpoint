import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/payment_success_bloc.dart';
import 'models/payment_success_model.dart'; // ignore_for_file: must_be_immutable

class PaymentSuccessDialog extends StatelessWidget {
  const PaymentSuccessDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PaymentSuccessBloc>(
      create: (context) => PaymentSuccessBloc(PaymentSuccessState(
        paymentSuccessModelObj: PaymentSuccessModel(),
      ))
        ..add(PaymentSuccessInitialEvent()),
      child: PaymentSuccessDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 26.h,
            vertical: 42.h,
          ),
          decoration: BoxDecoration(
            color: theme.colorScheme.onErrorContainer,
            borderRadius: BorderRadiusStyle.roundedBorder24,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 14.h),
              Container(
                height: 102.h,
                width: 104.h,
                decoration: BoxDecoration(
                  color: appTheme.gray50,
                  borderRadius: BorderRadiusStyle.roundedBorder50,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgCheckmark,
                      height: 30.h,
                      width: 42.h,
                      radius: BorderRadius.circular(
                        3.h,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 40.h),
              Text(
                "lbl_payment_success".tr,
                style: CustomTextStyles.titleLargeInterOnPrimaryContainer,
              ),
              SizedBox(height: 8.h),
              Text(
                "msg_your_payment_has".tr,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyLargeInterBluegray300.copyWith(
                  height: 1.50,
                ),
              ),
              SizedBox(height: 22.h),
              CustomElevatedButton(
                height: 56.h,
                text: "lbl_back_to_home".tr,
                margin: EdgeInsets.symmetric(horizontal: 44.h),
                buttonStyle: CustomButtonStyles.fillOnSecondaryContainer,
                buttonTextStyle:
                    CustomTextStyles.titleMediumInterOnErrorContainer_1,
              )
            ],
          ),
        )
      ],
    );
  }
}
