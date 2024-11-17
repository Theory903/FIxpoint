import 'package:fixpoint/core/app_export.dart';
import 'package:fixpoint/presentation/management_screen/controllers/management_controller.dart';
import 'package:fixpoint/presentation/management_screen/models/outletlist_item_model.dart';
import 'package:fixpoint/presentation/management_screen/widgets/outletlist_item_widget.dart';
import 'package:fixpoint/routes/app_routes.dart';
import 'package:fixpoint/theme/custom_button_style.dart';
import 'package:fixpoint/theme/theme_helper.dart';
import 'package:fixpoint/widgets/app_bar/appbar_leading_image.dart';
import 'package:fixpoint/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:fixpoint/widgets/app_bar/appbar_trailing_image.dart';
import 'package:fixpoint/widgets/app_bar/custom_app_bar.dart';
import 'package:fixpoint/widgets/custom_elevated_button.dart';
import 'package:fixpoint/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Iphone13MiniFourInitialPage extends StatelessWidget {
  const Iphone13MiniFourInitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Iphone13MiniFourInitialController controller = Get.put(Iphone13MiniFourInitialController());

    return Scaffold(
      appBar: _buildAppBar(context),
      body: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(color: appTheme.gray10002),
        child: Column(
          children: [
            SizedBox(
              width: double.maxFinite,
              child: _buildAppBar(context),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(18.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildTeamNavigationRow(context, controller),
                      SizedBox(height: 28.h),
                      _buildFranchiseSummaryColumn(context),
                      SizedBox(height: 36.h),
                      _buildOutletList(context)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
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
        text: Trans("lbl_management").tr,
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
  Widget _buildTeamNavigationRow(BuildContext context, Iphone13MiniFourInitialController controller) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => controller.onTapTeamOne(),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 4.h),
              decoration: BoxDecoration(
                color: appTheme.gray90001,
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Text(
                Trans("lbl_team2").tr,
                textAlign: TextAlign.center,
                style: CustomTextStyles.titleSmallOnErrorContainer_1,
              ),
            ),
          ),
          SizedBox(width: 20.h),
          Expanded(
            child: CustomElevatedButton(
              height: 30.h,
              text: Trans("lbl_inventory").tr,
              buttonStyle: CustomButtonStyles.fillPrimaryTL8,
              buttonTextStyle: CustomTextStyles.labelLargeOnErrorContainer,
              onPressed: () => controller.onTapInventory(),
            ),
          ),
          SizedBox(width: 20.h),
          GestureDetector(
            onTap: () => controller.onTapOutletTwo(),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 4.h),
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Text(
                Trans("lbl_outlet").tr,
                textAlign: TextAlign.left,
                style: CustomTextStyles.labelLargeOnErrorContainer,
              ),
            ),
          ),
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
              Trans("msg_franchise_summary").tr,
              style: CustomTextStyles.labelLargeBluegray90005,
            ),
          ),
          SizedBox(height: 20.h),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                _buildFranchiseCard("lbl_workers", "lbl_20", appTheme.deepOrangeA1007f),
                SizedBox(width: 14.h),
                _buildFranchiseCard("lbl_vehicle", "lbl_22", appTheme.deepPurpleAF),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          _buildOutletCard(context),
        ],
      ),
    );
  }

  Widget _buildFranchiseCard(String title, String value, Color color) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10.h),
        decoration: BoxDecoration(
          color: theme.colorScheme.onErrorContainer,
          borderRadius: BorderRadiusStyle.roundedBorder4,
          border: Border.all(color: appTheme.gray20001, width: 0.5.h),
          boxShadow: [
            BoxShadow(
              color: appTheme.black900.withOpacity(0.25),
              spreadRadius: 2.h,
              blurRadius: 2.h,
              offset: Offset(1, 1),
            ),
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
                      decoration: IconButtonStyleHelper.fillDeepPurpleAF,
                      child: CustomImageView(imagePath: ImageConstant.imgPhTruckLight),
                    ),
                    SizedBox(height: 12.h),
                    Text(Trans(title).tr, style: CustomTextStyles.labelLargeBluegray90002),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.h, right: 8.h),
              child: Text(Trans(value).tr, style: CustomTextStyles.titleSmallDeeppurpleA10001),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOutletCard(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        borderRadius: BorderRadiusStyle.roundedBorder4,
        border: Border.all(color: appTheme.gray20001, width: 0.5.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(1, 1),
          ),
        ],
      ),
      child: _buildOutletList(context),
    );
  }

  Widget _buildOutletList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Obx(() {
        var modelObj = Get.find<Iphone13MiniFourInitialController>().iphone13MiniFourInitialModel.value;
        return ListView.separated(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) => SizedBox(height: 22.h),
          itemCount: modelObj.outletlistItemList.length ?? 0,
          itemBuilder: (context, index) {
            OutletlistItemModel model = modelObj.outletlistItemList[index] ?? OutletlistItemModel();
            return OutletlistItemWidget(
              model,
              onTapColumnoutletone: () {
                Get.toNamed(AppRoutes.outletScreen);
              },
            );
          },
        );
      }),
    );
  }
}
