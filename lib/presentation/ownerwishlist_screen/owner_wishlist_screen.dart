import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/ownerwishlist_bloc.dart';
import 'models/ownerwishlist_model.dart';
import 'models/productlist_item_model.dart';
import 'widgets/productlist_item_widget.dart';

class OwnerwishlistScreen extends StatelessWidget {
  const OwnerwishlistScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OwnerwishlistBloc>(
      create: (context) => OwnerwishlistBloc(OwnerwishlistState(
        ownerwishlistModelObj: OwnerwishlistModel(),
      ))
        ..add(OwnerwishlistInitialEvent()),
      child: OwnerwishlistScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray200,
        appBar: _buildAppbar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(top: 14.h),
              child: Column(
                children: [
                  _buildProductList(context),
                  SizedBox(height: 50.h),
                  _buildPaymentSummary(context),
                  SizedBox(height: 14.h),
                  _buildSeparatorLine(context),
                  SizedBox(height: 14.h),
                  _buildPaymentMethod(context),
                  SizedBox(height: 88.h),
                  _buildCheckoutSection(context),
                  SizedBox(height: 6.h)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 64.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftBlack900,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 8.h,
          bottom: 8.h,
        ),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_wishlist".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildProductList(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: BlocSelector<OwnerwishlistBloc, OwnerwishlistState,
          OwnerwishlistModel?>(
        selector: (state) => state.ownerwishlistModelObj,
        builder: (context, ownerwishlistModelObj) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: ownerwishlistModelObj?.productlistItemList.length ?? 0,
            itemBuilder: (context, index) {
              ProductlistItemModel model =
                  ownerwishlistModelObj?.productlistItemList[index] ??
                      ProductlistItemModel();
              return ProductlistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentSummary(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 18.h),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_payment_detail".tr,
                  style: CustomTextStyles.titleMediumInterGray90003_1,
                ),
                SizedBox(height: 10.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "lbl_subtotal".tr,
                        style: CustomTextStyles.bodyMediumGray70001,
                      ),
                      Text(
                        "lbl_rs_999".tr,
                        style: CustomTextStyles.bodyMediumGray70001,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 12.h),
          SizedBox(
            width: double.maxFinite,
            child: _buildTotalRow(
              context,
              totalThree: "lbl_taxes".tr,
              rs1000Two: "lbl_rs_1_00".tr,
            ),
          ),
          SizedBox(height: 12.h),
          SizedBox(
            width: double.maxFinite,
            child: _buildTotalRow(
              context,
              totalThree: "lbl_total".tr,
              rs1000Two: "lbl_rs_1000".tr,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeparatorLine(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Divider(
              color: appTheme.blueGray50,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentMethod(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 18.h,
        right: 22.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_payment_method".tr,
            style: CustomTextStyles.titleMediumInterGray90003_1,
          ),
          SizedBox(height: 10.h),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12.h,
              vertical: 10.h,
            ),
            decoration: BoxDecoration(
              color: theme.colorScheme.onErrorContainer,
              borderRadius: BorderRadiusStyle.roundedBorder10,
              border: Border.all(
                color: appTheme.blueGray50,
                width: 1.h,
              ),
            ),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    "lbl_visa".tr,
                    style: CustomTextStyles.titleMediumInterIndigo90003,
                  ),
                ),
                Text(
                  "lbl_change".tr,
                  style: CustomTextStyles.bodySmallInterGray50003,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckoutSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 28.h,
        right: 12.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_total".tr,
                style: CustomTextStyles.titleSmallGray50003,
              ),
              Text(
                "lbl_rs_1000".tr,
                style: CustomTextStyles.titleMediumInterGray90003,
              )
            ],
          ),
          CustomElevatedButton(
            width: 192.h,
            text: "lbl_checkout".tr,
            buttonStyle: CustomButtonStyles.fillPrimaryTL24,
            buttonTextStyle:
                CustomTextStyles.titleSmallOnErrorContainerSemiBold,
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTotalRow(
    BuildContext context, {
    required String totalThree,
    required String rs1000Two,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          totalThree,
          style: CustomTextStyles.titleSmallGray90003.copyWith(
            color: appTheme.gray10003,
          ),
        ),
        Text(
          rs1000Two,
          style: CustomTextStyles.titleSmallGray90003.copyWith(
            color: appTheme.gray10003,
          ),
        )
      ],
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
