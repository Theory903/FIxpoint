import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../models/extralabellist_item_model.dart';

// ignore_for_file: must_be_immutable
class ExtralabellistItemWidget extends StatelessWidget {
  ExtralabellistItemWidget(this.extralabellistItemModelObj,
      {Key? key, this.onTapAssign})
      : super(
          key: key,
        );

  ExtralabellistItemModel extralabellistItemModelObj;

  VoidCallback? onTapAssign;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 176.h,
      margin: EdgeInsets.only(right: 48.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(
              left: 22.h,
              top: 20.h,
              bottom: 20.h,
            ),
            decoration: BoxDecoration(
              color: appTheme.black900,
              borderRadius: BorderRadiusStyle.roundedBorder14,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 24.h,
                  width: 78.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Text(
                        extralabellistItemModelObj.extralabel!,
                        style: CustomTextStyles
                            .titleMediumOpenSansOnErrorContainer,
                      ),
                      Text(
                        extralabellistItemModelObj.extralabelOne!,
                        style: CustomTextStyles
                            .titleMediumOpenSansOnErrorContainer,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 6.h),
                SizedBox(
                  height: 18.h,
                  width: 102.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Text(
                        extralabellistItemModelObj.smalllabel!,
                        style:
                            CustomTextStyles.bodySmallOpenSansOnErrorContainer,
                      ),
                      Text(
                        extralabellistItemModelObj.smalllabelOne!,
                        style:
                            CustomTextStyles.bodySmallOpenSansOnErrorContainer,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 86.h)
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(left: 20.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomElevatedButton(
                    height: 30.h,
                    width: 96.h,
                    text: "lbl_assign".tr,
                    margin: EdgeInsets.only(right: 24.h),
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 4.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgIcbaselineplus,
                        height: 12.h,
                        width: 16.h,
                        fit: BoxFit.contain,
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.fillOnErrorContainer,
                    buttonTextStyle: CustomTextStyles.bodySmallInterBlack900,
                    onPressed: () {
                      onTapAssign?.call();
                    },
                    alignment: Alignment.centerRight,
                  ),
                  SizedBox(height: 40.h),
                  SizedBox(
                    height: 18.h,
                    width: 244.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: SizedBox(
                                width: double.maxFinite,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      extralabellistItemModelObj.smallsemibold!,
                                      style: CustomTextStyles
                                          .labelLargeOpenSansOnErrorContainer,
                                    ),
                                    Text(
                                      extralabellistItemModelObj
                                          .smallsemibold1!,
                                      style: CustomTextStyles
                                          .labelLargeOpenSansOnErrorContainer,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: SizedBox(
                                width: double.maxFinite,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      extralabellistItemModelObj
                                          .smallsemibold2!,
                                      style: CustomTextStyles
                                          .labelLargeOpenSansOnErrorContainer,
                                    ),
                                    Text(
                                      extralabellistItemModelObj
                                          .smallsemibold3!,
                                      style: CustomTextStyles
                                          .labelLargeOpenSansOnErrorContainer,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    height: 6.h,
                    width: 240.h,
                    decoration: BoxDecoration(
                      color: appTheme.gray300,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(3.h),
                        topRight: Radius.circular(2.h),
                        bottomLeft: Radius.circular(3.h),
                        bottomRight: Radius.circular(3.h),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(3.h),
                        topRight: Radius.circular(2.h),
                        bottomLeft: Radius.circular(3.h),
                        bottomRight: Radius.circular(3.h),
                      ),
                      child: LinearProgressIndicator(
                        value: 0.2,
                        backgroundColor: appTheme.gray300,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          theme.colorScheme.onSecondaryContainer,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12.h),
                  SizedBox(
                    height: 22.h,
                    width: 150.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Text(
                          extralabellistItemModelObj.defaultlabel!,
                          style: CustomTextStyles
                              .titleSmallOpenSansOnErrorContainer,
                        ),
                        Text(
                          extralabellistItemModelObj.defaultlabel1!,
                          style: CustomTextStyles
                              .titleSmallOpenSansOnErrorContainer,
                        )
                      ],
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
