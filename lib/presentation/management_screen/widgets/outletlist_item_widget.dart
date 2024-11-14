import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import '../../../widgets/custom_icon_button.dart';
import '../models/outletlist_item_model.dart';

// ignore_for_file: must_be_immutable
class OutletlistItemWidget extends StatelessWidget {
  OutletlistItemWidget(this.outletlistItemModelObj,
      {Key? key, this.onTapColumnoutletone})
      : super(
          key: key,
        );

  OutletlistItemModel outletlistItemModelObj;

  VoidCallback? onTapColumnoutletone;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapColumnoutletone?.call();
      },
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          horizontal: 22.h,
          vertical: 10.h,
        ),
        decoration: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadiusStyle.circleBorder20,
          border: Border.all(
            color: appTheme.gray20001,
            width: 0.5.h,
          ),
          boxShadow: [
            BoxShadow(
              color: appTheme.black900.withOpacity(0.25),
              spreadRadius: 2.h,
              blurRadius: 2.h,
              offset: Offset(
                1,
                1,
              ),
            )
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(
                left: 4.h,
                right: 2.h,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "lbl_outlet".tr,
                                        style: CustomTextStyles
                                            .titleMediumInterOnErrorContainer,
                                      ),
                                      TextSpan(
                                        text: " ",
                                      ),
                                      TextSpan(
                                        text: "lbl2".tr,
                                        style: CustomTextStyles
                                            .titleSmallOnErrorContainer,
                                      ),
                                      TextSpan(
                                        text: "lbl_1".tr,
                                        style: CustomTextStyles
                                            .titleMediumInterOnErrorContainer,
                                      )
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  outletlistItemModelObj.peopleCounter!,
                                  style: CustomTextStyles.titleSmallGray70002,
                                )
                              ],
                            ),
                          ),
                          CustomImageView(
                            imagePath: outletlistItemModelObj.outletoneOne!,
                            height: 24.h,
                            width: 24.h,
                          )
                        ],
                      ),
                    ),
                  ),
                  CustomIconButton(
                    height: 28.h,
                    width: 28.h,
                    padding: EdgeInsets.all(2.h),
                    decoration: IconButtonStyleHelper.fillBlueGray,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgMaterialSymbol,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 14.h),
            CustomImageView(
              imagePath: outletlistItemModelObj.outletoneThree!,
              height: 44.h,
              width: 130.h,
            ),
            SizedBox(height: 14.h)
          ],
        ),
      ),
    );
  }
}
