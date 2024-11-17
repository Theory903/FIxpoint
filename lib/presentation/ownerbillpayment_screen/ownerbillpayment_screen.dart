import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/ownerbillpayment_bloc.dart';
import 'models/gridelectricity_item_model.dart';
import 'models/ownerbillpayment_model.dart';
import 'widgets/gridelectricity_item_widget.dart';

class OwnerbillpaymentScreen extends StatelessWidget {
  const OwnerbillpaymentScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OwnerbillpaymentBloc>(
      create: (context) => OwnerbillpaymentBloc(OwnerbillpaymentState(
        ownerbillpaymentModelObj: OwnerbillpaymentModel(),
      ))
        ..add(OwnerbillpaymentInitialEvent()),
      child: OwnerbillpaymentScreen(),
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
            left: 14.h,
            top: 40.h,
            right: 14.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [_buildGridElectricity(context)],
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
        text: "lbl_bill_payment".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildGridElectricity(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: BlocSelector<OwnerbillpaymentBloc, OwnerbillpaymentState,
            OwnerbillpaymentModel?>(
          selector: (state) => state.ownerbillpaymentModelObj,
          builder: (context, ownerbillpaymentModelObj) {
            return ResponsiveGridListBuilder(
              minItemWidth: 1,
              minItemsPerRow: 3,
              maxItemsPerRow: 3,
              horizontalGridSpacing: 8.h,
              verticalGridSpacing: 8.h,
              builder: (context, items) => ListView(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: BouncingScrollPhysics(),
                children: items,
              ),
              gridItems: List.generate(
                ownerbillpaymentModelObj?.gridelectricityItemList.length ?? 0,
                (index) {
                  GridelectricityItemModel model = ownerbillpaymentModelObj
                          ?.gridelectricityItemList[index] ??
                      GridelectricityItemModel();
                  return GridelectricityItemWidget(
                    model,
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
