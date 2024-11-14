import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_rating_bar.dart';
import '../payment_success_dialog/payment_success_dialog.dart';
import 'bloc/washing_bloc.dart';
import 'models/washing_model.dart';

class WashingScreen extends StatelessWidget {
  const WashingScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<WashingBloc>(
      create: (context) => WashingBloc(WashingState(
        washingModelObj: WashingModel(),
      ))
        ..add(WashingInitialEvent()),
      child: WashingScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10002,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 18.h,
                top: 16.h,
                right: 18.h,
              ),
              child: Column(
                children: [
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(
                      left: 2.h,
                      right: 10.h,
                    ),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage301,
                          height: 214.h,
                          width: double.maxFinite,
                          margin: EdgeInsets.only(
                            left: 30.h,
                            right: 22.h,
                          ),
                        ),
                        SizedBox(height: 36.h),
                        _buildProductDetails(context),
                        SizedBox(height: 36.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "lbl_description".tr,
                            style: CustomTextStyles.bodyLargeInterGray90003,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    width: 332.h,
                    margin: EdgeInsets.only(left: 2.h),
                    child: ReadMoreText(
                      "msg_obh_combi_is_a".tr,
                      trimLines: 4,
                      colorClickableText:
                          theme.colorScheme.onSecondaryContainer,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: "lbl_read_more".tr,
                      moreStyle:
                          CustomTextStyles.bodySmallInterGray50003.copyWith(
                        height: 1.67,
                      ),
                      lessStyle:
                          CustomTextStyles.bodySmallInterGray50003.copyWith(
                        height: 1.67,
                      ),
                    ),
                  ),
                  SizedBox(height: 50.h),
                  _buildPurchaseOptions(context),
                  SizedBox(height: 12.h)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
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
        text: "lbl_washing".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildProductDetails(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_jet_washing".tr,
                        style: CustomTextStyles.titleLargeInterGray90003,
                      ),
                      Text(
                        "lbl_machine".tr,
                        style: CustomTextStyles.bodyLargeInterGray50003,
                      ),
                      SizedBox(height: 8.h),
                      SizedBox(
                        width: double.maxFinite,
                        child: Row(
                          children: [
                            CustomRatingBar(
                              alignment: Alignment.bottomCenter,
                              initialRating: 0,
                              itemSize: 14,
                              itemCount: 4,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text(
                                "lbl_4_0".tr,
                                style: CustomTextStyles
                                    .bodyMediumOnSecondaryContainer,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFavoriteRed300,
                  height: 24.h,
                  width: 24.h,
                )
              ],
            ),
          ),
          SizedBox(height: 26.h),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          context
                              .read<WashingBloc>()
                              .add(DecrementQuantityEvent(quantity: 1));
                        },
                        child: SizedBox(
                          height: 32.h,
                          width: 32.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgUpload,
                                height: 32.h,
                                width: 32.h,
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 22.h),
                        child: BlocSelector<WashingBloc, WashingState, int?>(
                          selector: (state) => state.quantity,
                          builder: (context, quantity) {
                            return Text(
                              (quantity ?? "").toString(),
                              style:
                                  CustomTextStyles.headlineSmallInterGray90003,
                            );
                          },
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          context
                              .read<WashingBloc>()
                              .add(IncrementQuantityEvent(quantity: 1));
                        },
                        child: Container(
                          height: 32.h,
                          width: 32.h,
                          margin: EdgeInsets.only(left: 30.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant
                                    .imgFacebookOnsecondarycontainer,
                                height: 32.h,
                                width: 32.h,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  "lbl_rs_199".tr,
                  style: CustomTextStyles.headlineMediumInterGray90003,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPurchaseOptions(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomIconButton(
          height: 50.h,
          width: 50.h,
          padding: EdgeInsets.all(12.h),
          decoration: IconButtonStyleHelper.fillBlueGrayTL8,
          child: CustomImageView(
            imagePath: ImageConstant.imgThumbsUpOnsecondarycontainer50x50,
          ),
        ),
        SizedBox(width: 18.h),
        CustomElevatedButton(
          width: 266.h,
          text: "lbl_buy_now".tr,
          buttonStyle: CustomButtonStyles.fillPrimaryTL24,
          buttonTextStyle: CustomTextStyles.bodyMediumOnErrorContainer,
          onPressed: () {
            onTapBuynow(context);
          },
        )
      ],
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Displays a dialog with the [PaymentSuccessDialog] content.
  onTapBuynow(BuildContext context) {
    showDialog(
        context: NavigatorService.navigatorKey.currentContext!,
        builder: (_) => AlertDialog(
              content: PaymentSuccessDialog.builder(
                  NavigatorService.navigatorKey.currentContext!),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.zero,
            ));
  }
}
