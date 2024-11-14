import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import 'bloc/review_bloc.dart';
import 'models/iphone13mini_tab1_model.dart';

class Iphone13miniTab1Page extends StatefulWidget {
  const Iphone13miniTab1Page({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone13miniTab1PageState createState() => Iphone13miniTab1PageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ReviewBloc>(
      create: (context) => ReviewBloc(ReviewState(
        iphone13miniTab1ModelObj: Iphone13miniTab1Model(),
      ))
        ..add(ReviewInitialEvent()),
      child: Iphone13miniTab1Page(),
    );
  }
}

class Iphone13miniTab1PageState extends State<Iphone13miniTab1Page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 20.h,
      ),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(right: 4.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_recent_reviews".tr,
                      style: CustomTextStyles.titleMediumInterPrimary,
                    ),
                    SizedBox(height: 24.h),
                    _buildReviewByRoshan(context),
                    SizedBox(height: 24.h),
                    _buildDescriptionSection(context),
                    SizedBox(height: 32.h),
                    _buildReviewByAbhinav(context),
                    SizedBox(height: 24.h),
                    _buildAdditionalDescription(context)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReviewByRoshan(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 4.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse535,
            height: 40.h,
            width: 40.h,
            radius: BorderRadius.circular(
              20.h,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "msg_review_by_roshan".tr,
                    style: CustomTextStyles.bodyMediumPrimary,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant
                            .imgIcRoundStarOutlineOnsecondarycontainer,
                        height: 16.h,
                        width: 16.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "lbl_3_5_5".tr,
                          style: CustomTextStyles
                              .bodySmallInterOnSecondaryContainer11,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 2.h,
                          width: 2.h,
                          margin: EdgeInsets.only(
                            left: 6.h,
                            bottom: 6.h,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.black900,
                            borderRadius: BorderRadius.circular(
                              1.h,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "lbl_1_feb_2023".tr,
                          style: CustomTextStyles.bodySmallInterBluegray300,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDescriptionSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.only(
        left: 18.h,
        top: 14.h,
        bottom: 14.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder10,
        border: Border.all(
          color: appTheme.blueGray10002,
          width: 1.h,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "msg_lorem_ipsum_dolor3".tr,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodySmallInterBluegray80003.copyWith(
              height: 1.50,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReviewByAbhinav(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 4.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse53540x40,
            height: 40.h,
            width: 40.h,
            radius: BorderRadius.circular(
              20.h,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "msg_review_by_abhinav".tr,
                    style: CustomTextStyles.bodyMediumPrimary,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 4.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant
                              .imgIcRoundStarOutlineOnsecondarycontainer,
                          height: 16.h,
                          width: 16.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "lbl_4_5_5".tr,
                            style: CustomTextStyles
                                .bodySmallInterOnSecondaryContainer11,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 2.h,
                            width: 2.h,
                            margin: EdgeInsets.only(
                              left: 6.h,
                              bottom: 6.h,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.black900,
                              borderRadius: BorderRadius.circular(
                                1.h,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "lbl_1_feb_2023".tr,
                            style: CustomTextStyles.bodySmallInterBluegray300,
                          ),
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

  /// Section Widget
  Widget _buildAdditionalDescription(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.only(
        left: 18.h,
        top: 14.h,
        bottom: 14.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder10,
        border: Border.all(
          color: appTheme.blueGray10002,
          width: 1.h,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "msg_lorem_ipsum_dolor3".tr,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodySmallInterBluegray80003.copyWith(
              height: 1.50,
            ),
          )
        ],
      ),
    );
  }
}
