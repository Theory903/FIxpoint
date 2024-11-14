import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/ownerdashboard_bloc.dart';
import 'models/scrollview_tab_model.dart';
import 'models/statisticslist_item_model.dart';
import 'widgets/statisticslist_item_widget.dart';

class ScrollviewTabPage extends StatefulWidget {
  const ScrollviewTabPage({Key? key})
      : super(
          key: key,
        );

  @override
  ScrollviewTabPageState createState() => ScrollviewTabPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<OwnerdashboardBloc>(
      create: (context) => OwnerdashboardBloc(OwnerdashboardState(
        scrollviewTabModelObj: ScrollviewTabModel(),
      ))
        ..add(OwnerdashboardInitialEvent()),
      child: ScrollviewTabPage(),
    );
  }
}

class ScrollviewTabPageState extends State<ScrollviewTabPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 20.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildStatisticsList(context),
            SizedBox(height: 20.h),
            SizedBox(
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildReportStack(context),
                  SizedBox(height: 22.h),
                  _buildServiceHistoryColumn(context),
                  SizedBox(height: 22.h),
                  _buildTransactionHistoryColumn(context),
                  SizedBox(height: 22.h),
                  _buildInventoryRow(context)
                ],
              ),
            ),
            SizedBox(height: 52.h),
            _buildPromotionRow(context)
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStatisticsList(BuildContext context) {
    return Container(
      child: BlocSelector<OwnerdashboardBloc, OwnerdashboardState,
          ScrollviewTabModel?>(
        selector: (state) => state.scrollviewTabModelObj,
        builder: (context, scrollviewTabModelObj) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              direction: Axis.horizontal,
              spacing: 24.h,
              children: List.generate(
                scrollviewTabModelObj?.statisticslistItemList.length ?? 0,
                (index) {
                  StatisticslistItemModel model =
                      scrollviewTabModelObj?.statisticslistItemList[index] ??
                          StatisticslistItemModel();
                  return StatisticslistItemWidget(
                    model,
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildReportStack(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.only(right: 26.h),
        color: appTheme.gray10002,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: appTheme.gray30001,
            width: 1.h,
          ),
          borderRadius: BorderRadiusStyle.roundedBorder4,
        ),
        child: Container(
          height: 44.h,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: appTheme.gray10002,
            borderRadius: BorderRadiusStyle.roundedBorder4,
            border: Border.all(
              color: appTheme.gray30001,
              width: 1.h,
            ),
            boxShadow: [
              BoxShadow(
                color: appTheme.black900.withOpacity(0.1),
                spreadRadius: 2.h,
                blurRadius: 2.h,
                offset: Offset(
                  0,
                  1,
                ),
              )
            ],
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: Text(
                    "msg_get_overall_report".tr,
                    style: CustomTextStyles.labelLargeBluegray90005_1,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  onTapColumngetoveral(context);
                },
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(
                    left: 14.h,
                    top: 14.h,
                    bottom: 14.h,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.gray10002,
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                    border: Border.all(
                      color: appTheme.gray30001,
                      width: 1.h,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: appTheme.black900.withOpacity(0.1),
                        spreadRadius: 2.h,
                        blurRadius: 2.h,
                        offset: Offset(
                          0,
                          1,
                        ),
                      )
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_get_overall_report".tr,
                        style: CustomTextStyles.labelLargeBluegray90005_1,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildServiceHistoryColumn(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 26.h),
      padding: EdgeInsets.only(
        left: 14.h,
        top: 12.h,
        bottom: 12.h,
      ),
      decoration: BoxDecoration(
        color: appTheme.gray10002,
        borderRadius: BorderRadiusStyle.roundedBorder4,
        border: Border.all(
          color: appTheme.gray30001,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1,
            ),
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_service_history".tr,
            style: CustomTextStyles.labelLargeBluegray90005_1,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTransactionHistoryColumn(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: GestureDetector(
        onTap: () {
          onTapTransactionHistoryColumn(context);
        },
        child: Container(
          width: double.maxFinite,
          margin: EdgeInsets.only(right: 26.h),
          padding: EdgeInsets.only(
            left: 14.h,
            top: 12.h,
            bottom: 12.h,
          ),
          decoration: BoxDecoration(
            color: appTheme.gray10002,
            borderRadius: BorderRadiusStyle.roundedBorder4,
            border: Border.all(
              color: appTheme.gray30001,
              width: 1.h,
            ),
            boxShadow: [
              BoxShadow(
                color: appTheme.black900.withOpacity(0.1),
                spreadRadius: 2.h,
                blurRadius: 2.h,
                offset: Offset(
                  0,
                  1,
                ),
              )
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "msg_transaction_history".tr,
                style: CustomTextStyles.labelLargeBluegray90005_1,
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildInventoryRow(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          SizedBox(
            width: 148.h,
            child: Column(
              children: [
                SizedBox(
                  height: 82.h,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle166,
                        height: 80.h,
                        width: 104.h,
                        radius: BorderRadius.circular(
                          4.h,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          onTapColumninventory(context);
                        },
                        child: Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.only(
                            left: 32.h,
                            top: 28.h,
                            bottom: 28.h,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.black900.withOpacity(0.4),
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 2.h),
                              Text(
                                "lbl_inventory".tr,
                                style: CustomTextStyles
                                    .titleMediumInterOnErrorContainerBold,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 16.h),
                SizedBox(
                  height: 86.h,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle167,
                        height: 86.h,
                        width: double.maxFinite,
                        radius: BorderRadius.circular(
                          4.h,
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.only(
                          left: 32.h,
                          top: 30.h,
                          bottom: 30.h,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.black900.withOpacity(0.4),
                          borderRadius: BorderRadiusStyle.roundedBorder4,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "lbl_branding".tr,
                              style: CustomTextStyles
                                  .titleMediumInterOnErrorContainerBold,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: 184.h,
              margin: EdgeInsets.only(
                left: 10.h,
                right: 16.h,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle168,
                    height: 184.h,
                    width: double.maxFinite,
                    radius: BorderRadius.circular(
                      4.h,
                    ),
                    onTap: () {
                      onTapImgImagethree(context);
                    },
                  ),
                  Container(
                    height: 184.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle172,
                          height: 184.h,
                          width: double.maxFinite,
                          radius: BorderRadius.circular(
                            4.h,
                          ),
                        ),
                        Container(
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: appTheme.black900.withOpacity(0.4),
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 80.h),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "lbl_team".tr,
                                  style: CustomTextStyles
                                      .titleMediumInterOnErrorContainerBold,
                                ),
                              ),
                              SizedBox(height: 36.h),
                              CustomIconButton(
                                height: 46.h,
                                width: 72.h,
                                padding: EdgeInsets.all(16.h),
                                decoration: IconButtonStyleHelper.fillPrimary,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgArrowLeft,
                                ),
                              )
                            ],
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
  Widget _buildPromotionRow(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          SizedBox(
            height: 102.h,
            width: 148.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle16684x96,
                  height: 84.h,
                  width: 98.h,
                  radius: BorderRadius.only(
                    topLeft: Radius.circular(4.h),
                    topRight: Radius.circular(14.h),
                    bottomLeft: Radius.circular(14.h),
                    bottomRight: Radius.circular(4.h),
                  ),
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(bottom: 4.h),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.zero,
                  color: appTheme.black900.withOpacity(0.3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.customBorderBL14,
                  ),
                  child: Container(
                    height: 102.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 12.h,
                    ),
                    decoration: BoxDecoration(
                      color: appTheme.black900.withOpacity(0.3),
                      borderRadius: BorderRadiusStyle.customBorderBL14,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 64.h,
                            child: Text(
                              "lbl_winter_sale".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .titleMediumRalewayOnErrorContainerBold18,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: double.maxFinite,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  width: 52.h,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 6.h,
                                        width: 6.h,
                                        decoration: BoxDecoration(
                                          color: appTheme.black900,
                                          borderRadius: BorderRadius.circular(
                                            3.h,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          height: 2.h,
                                          width: 18.h,
                                          decoration: BoxDecoration(
                                            color: appTheme.black900,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 8.h,
                                        width: 8.h,
                                        decoration: BoxDecoration(
                                          color: appTheme.black900,
                                          borderRadius: BorderRadius.circular(
                                            4.h,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 6.h,
                                        width: 6.h,
                                        margin: EdgeInsets.only(left: 14.h),
                                        decoration: BoxDecoration(
                                          color: appTheme.blueGray10001,
                                          borderRadius: BorderRadius.circular(
                                            3.h,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 30.h),
                              Text(
                                "msg_all_discount_up".tr,
                                style: CustomTextStyles
                                    .labelMediumRalewayOnErrorContainer,
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
          ),
          SizedBox(width: 10.h),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 38.h,
                    child: Text(
                      "lbl_grab_now".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles
                          .titleMediumRalewayOnErrorContainerBold,
                    ),
                  ),
                  SizedBox(width: 24.h),
                  CustomImageView(
                    imagePath: ImageConstant.imgMobileMarketingPana,
                    height: 98.h,
                    width: 100.h,
                    margin: EdgeInsets.only(top: 4.h),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the OverallReportScreen when the action is triggered.
  onTapColumngetoveral(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.overallReportScreen,
    );
  }

  /// Navigates to the transactionScreen when the action is triggered.
  onTapTransactionHistoryColumn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.transactionScreen,
    );
  }

  onTapColumninventory(BuildContext context) {}

  /// Navigates to the EmployeeRankScreen when the action is triggered.
  onTapImgImagethree(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.employeeRankScreen,
    );
  }
}
