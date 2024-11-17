import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'bloc/outlet_bloc.dart';
import 'models/scrollview_tab1_model.dart';
import 'models/teammemberlist_item_model.dart';
import 'widgets/teammemberlist_item_widget.dart';

class ScrollviewTab1Page extends StatefulWidget {
  const ScrollviewTab1Page({Key? key})
      : super(
          key: key,
        );

  @override
  ScrollviewTab1PageState createState() => ScrollviewTab1PageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<OutletBloc>(
      create: (context) => OutletBloc(OutletState(
        scrollviewTab1ModelObj: ScrollviewTab1Model(),
      ))
        ..add(OutletInitialEvent()),
      child: ScrollviewTab1Page(),
    );
  }
}

class ScrollviewTab1PageState extends State<ScrollviewTab1Page> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: 6.h),
        child: Column(
          children: [
            _buildStarRatingRow(context),
            SizedBox(
              height: 568.h,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 12.h),
                      child: Text(
                        "lbl_team_member".tr,
                        style: CustomTextStyles.titleSmallPrimary15,
                      ),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                      horizontal: 26.h,
                      vertical: 56.h,
                    ),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.onErrorContainer,
                      borderRadius: BorderRadiusStyle.roundedBorder40,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildTeamMemberList(context),
                        SizedBox(height: 12.h),
                        SizedBox(
                          width: double.maxFinite,
                          child: Divider(
                            color: appTheme.gray70002.withOpacity(0.1),
                          ),
                        ),
                        SizedBox(height: 4.h)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStarRatingRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgIcRoundStar,
            height: 24.h,
            width: 24.h,
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(
              left: 28.h,
              top: 24.h,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgIcRoundStar,
            height: 24.h,
            width: 24.h,
            margin: EdgeInsets.only(left: 8.h),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse3,
                  height: 50.h,
                  width: 50.h,
                  radius: BorderRadius.circular(
                    24.h,
                  ),
                  margin: EdgeInsets.only(right: 6.h),
                  onTap: () {
                    onTapImgImagetwo(context);
                  },
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage294,
                  height: 16.h,
                  width: 14.h,
                  margin: EdgeInsets.only(left: 18.h),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 72.h,
              width: 62.h,
              margin: EdgeInsets.only(
                left: 6.h,
                top: 16.h,
                bottom: 72.h,
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse5,
                    height: 62.h,
                    width: 62.h,
                    radius: BorderRadius.circular(
                      30.h,
                    ),
                    alignment: Alignment.topCenter,
                    onTap: () {
                      onTapImgImagethree(context);
                    },
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage293,
                    height: 20.h,
                    width: 24.h,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(bottom: 16.h),
              padding: EdgeInsets.only(left: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse6,
                    height: 50.h,
                    width: 52.h,
                    radius: BorderRadius.circular(
                      24.h,
                    ),
                    onTap: () {
                      onTapImgImagefour(context);
                    },
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage294,
                    height: 16.h,
                    width: 14.h,
                    margin: EdgeInsets.only(left: 20.h),
                  )
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgIcRoundStar,
            height: 24.h,
            width: 24.h,
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(left: 6.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgIcRoundStar,
            height: 24.h,
            width: 24.h,
            margin: EdgeInsets.only(
              left: 6.h,
              bottom: 4.h,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTeamMemberList(BuildContext context) {
    return BlocSelector<OutletBloc, OutletState, ScrollviewTab1Model?>(
      selector: (state) => state.scrollviewTab1ModelObj,
      builder: (context, scrollviewTab1ModelObj) {
        return ListView.separated(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 7.0.h),
              child: Divider(
                height: 1.h,
                thickness: 1.h,
                color: appTheme.gray70002.withOpacity(0.1),
              ),
            );
          },
          itemCount: scrollviewTab1ModelObj?.teammemberlistItemList.length ?? 0,
          itemBuilder: (context, index) {
            TeammemberlistItemModel model =
                scrollviewTab1ModelObj?.teammemberlistItemList[index] ??
                    TeammemberlistItemModel();
            return TeammemberlistItemWidget(
              model,
              onTapRowrajusharma: () {
                onTapRowrajusharma(context);
              },
            );
          },
        );
      },
    );
  }

  /// Navigates to the workassignScreen when the action is triggered.
  onTapRowrajusharma(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.workassignScreen,
    );
  }

  /// Navigates to the workassignScreen when the action is triggered.
  onTapImgImagetwo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.workassignScreen,
    );
  }

  /// Navigates to the workassignScreen when the action is triggered.
  onTapImgImagethree(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.workassignScreen,
    );
  }

  /// Navigates to the workassignScreen when the action is triggered.
  onTapImgImagefour(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.workassignScreen,
    );
  }
}
