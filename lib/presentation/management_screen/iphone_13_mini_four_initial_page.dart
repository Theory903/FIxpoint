import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/management_bloc.dart';
import 'models/iphone_13_mini_four_initial_model.dart';
import 'models/outletlist_item_model.dart';
import 'widgets/outletlist_item_widget.dart';

class Iphone13MiniFourInitialPage extends StatefulWidget {
  const Iphone13MiniFourInitialPage({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone13MiniFourInitialPageState createState() =>
      Iphone13MiniFourInitialPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ManagementBloc>(
      create: (context) => ManagementBloc(ManagementState(
        iphone13MiniFourInitialModelObj: Iphone13MiniFourInitialModel(),
      ))
        ..add(ManagementInitialEvent()),
      child: Iphone13MiniFourInitialPage(),
    );
  }
}

class Iphone13MiniFourInitialPageState
    extends State<Iphone13MiniFourInitialPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.gray10002,
      ),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: _buildAppBar(context),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(18.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildTeamNavigationRow(context),
                    SizedBox(height: 28.h),
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.only(
                        left: 4.h,
                        right: 6.h,
                      ),
                      child: Column(
                        children: [
                          _buildFranchiseSummaryColumn(context),
                          SizedBox(height: 36.h),
                          _buildOutletList(context)
                        ],
                      ),
                    ),
                    SizedBox(height: 2.h)
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 54.h,
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgContentLeftAlignment,
        margin: EdgeInsets.only(left: 24.h),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_management".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgGroup238,
          height: 18.h,
          width: 16.h,
          margin: EdgeInsets.only(right: 27.h),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildTeamNavigationRow(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              onTapTxtTeamone(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 22.h,
                vertical: 4.h,
              ),
              decoration: BoxDecoration(
                color: appTheme.gray90001,
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Text(
                "lbl_team2".tr,
                textAlign: TextAlign.center,
                style: CustomTextStyles.titleSmallOnErrorContainer_1,
              ),
            ),
          ),
          SizedBox(width: 20.h),
          Expanded(
            child: CustomElevatedButton(
              height: 30.h,
              text: "lbl_inventory".tr,
              buttonStyle: CustomButtonStyles.fillPrimaryTL8,
              buttonTextStyle: CustomTextStyles.labelLargeOnErrorContainer,
              onPressed: () {
                onTapInventory(context);
              },
            ),
          ),
          SizedBox(width: 20.h),
          GestureDetector(
            onTap: () {
              onTapTxtOutlettwo(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 4.h,
              ),
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Text(
                "lbl_outlet".tr,
                textAlign: TextAlign.left,
                style: CustomTextStyles.labelLargeOnErrorContainer,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFranchiseSummaryColumn(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "msg_franchise_summary".tr,
              style: CustomTextStyles.labelLargeBluegray90005,
            ),
          ),
          SizedBox(height: 20.h),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10.h),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.onErrorContainer,
                      borderRadius: BorderRadiusStyle.roundedBorder4,
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 30.h,
                                  width: 32.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.deepOrangeA1007f,
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder14,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle163,
                                        height: 16.h,
                                        width: 24.h,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 12.h),
                                Text(
                                  "lbl_workers".tr,
                                  style:
                                      CustomTextStyles.labelLargeBluegray90002,
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 6.h,
                            right: 4.h,
                          ),
                          child: Text(
                            "lbl_20".tr,
                            style: CustomTextStyles.titleSmallDeeporangeA100,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 14.h),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10.h),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.onErrorContainer,
                      borderRadius: BorderRadiusStyle.roundedBorder4,
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomIconButton(
                                  height: 30.h,
                                  width: 30.h,
                                  padding: EdgeInsets.all(4.h),
                                  decoration:
                                      IconButtonStyleHelper.fillDeepPurpleAF,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgPhTruckLight,
                                  ),
                                ),
                                SizedBox(height: 12.h),
                                Text(
                                  "lbl_vehicle".tr,
                                  style:
                                      CustomTextStyles.labelLargeBluegray90002,
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 8.h,
                            right: 8.h,
                          ),
                          child: Text(
                            "lbl_22".tr,
                            style: CustomTextStyles.titleSmallDeeppurpleA10001,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Container(
            decoration: BoxDecoration(
              color: theme.colorScheme.onErrorContainer,
              borderRadius: BorderRadiusStyle.roundedBorder4,
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
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Column(
                    children: [
                      CustomIconButton(
                        height: 30.h,
                        width: 30.h,
                        padding: EdgeInsets.all(4.h),
                        decoration: IconButtonStyleHelper.fillGreenA,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroup48,
                        ),
                      ),
                      SizedBox(height: 24.h),
                      Text(
                        "lbl_outlet".tr,
                        style: CustomTextStyles.labelLargeBlack900_1,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 96.h,
                  width: 150.h,
                  decoration: BoxDecoration(
                    color: appTheme.blueGray10002,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse,
                        height: 96.h,
                        width: double.maxFinite,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOutletList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: BlocSelector<ManagementBloc, ManagementState,
          Iphone13MiniFourInitialModel?>(
        selector: (state) => state.iphone13MiniFourInitialModelObj,
        builder: (context, iphone13MiniFourInitialModelObj) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 22.h,
              );
            },
            itemCount:
                iphone13MiniFourInitialModelObj?.outletlistItemList.length ?? 0,
            itemBuilder: (context, index) {
              OutletlistItemModel model =
                  iphone13MiniFourInitialModelObj?.outletlistItemList[index] ??
                      OutletlistItemModel();
              return OutletlistItemWidget(
                model,
                onTapColumnoutletone: () {
                  onTapColumnoutletone(context);
                },
              );
            },
          );
        },
      ),
    );
  }

  /// Navigates to the outletScreen when the action is triggered.
  onTapColumnoutletone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.outletScreen,
    );
  }

  /// Navigates to the outletScreen when the action is triggered.
  onTapTxtTeamone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.outletScreen,
    );
  }

  onTapInventory(BuildContext context) {}

  /// Navigates to the OverallReportScreen when the action is triggered.
  onTapTxtOutlettwo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.overallReportScreen,
    );
  }
}
