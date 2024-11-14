import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/pay_bloc.dart';
import 'models/pay_model.dart';
import 'models/paymentmethodslist_item_model.dart';
import 'widgets/paymentmethodslist_item_widget.dart';

class PayScreen extends StatelessWidget {
  const PayScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PayBloc>(
      create: (context) => PayBloc(PayState(
        payModelObj: PayModel(),
      ))
        ..add(PayInitialEvent()),
      child: PayScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10002,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 22.h,
            top: 20.h,
            right: 22.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [_buildPaymentMethodsList(context)],
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
        text: "lbl_pay".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentMethodsList(BuildContext context) {
    return Expanded(
      child: BlocSelector<PayBloc, PayState, PayModel?>(
        selector: (state) => state.payModelObj,
        builder: (context, payModelObj) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 16.h,
              );
            },
            itemCount: payModelObj?.paymentmethodslistItemList.length ?? 0,
            itemBuilder: (context, index) {
              PaymentmethodslistItemModel model =
                  payModelObj?.paymentmethodslistItemList[index] ??
                      PaymentmethodslistItemModel();
              return PaymentmethodslistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
