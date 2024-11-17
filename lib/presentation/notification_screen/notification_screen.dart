import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/notifcation_bloc.dart';
import 'models/listtask_item_model.dart';
import 'models/notifcation_model.dart';
import 'models/receivedsection_item_model.dart';
import 'widgets/listtask_item_widget.dart';
import 'widgets/receivedsection_item_widget.dart';

class NotifcationScreen extends StatelessWidget {
  const NotifcationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<NotifcationBloc>(
      create: (context) => NotifcationBloc(NotifcationState(
        notifcationModelObj: NotifcationModel(),
      ))
        ..add(NotifcationInitialEvent()),
      child: NotifcationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10002,
        appBar: _buildAppbar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(top: 18.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              _buildTodaySection(context),
              SizedBox(height: 20.h),
              SizedBox(
                width: double.maxFinite,
                child: Divider(
                  color: appTheme.black900.withOpacity(0.2),
                ),
              ),
              SizedBox(height: 12.h),
              _buildYesterdaySection(context),
              SizedBox(height: 14.h),
              _buildReceivedSection(context)
            ],
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
        text: "lbl_notifications".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildTodaySection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 24.h,
        right: 30.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_today2".tr,
            style: CustomTextStyles.bodySmallInterPrimaryContainer,
          ),
          SizedBox(height: 18.h),
          BlocSelector<NotifcationBloc, NotifcationState, NotifcationModel?>(
            selector: (state) => state.notifcationModelObj,
            builder: (context, notifcationModelObj) {
              return ListView.separated(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 9.0.h),
                    child: Divider(
                      height: 1.h,
                      thickness: 1.h,
                      color: appTheme.gray40004,
                    ),
                  );
                },
                itemCount: notifcationModelObj?.listtaskItemList.length ?? 0,
                itemBuilder: (context, index) {
                  ListtaskItemModel model =
                      notifcationModelObj?.listtaskItemList[index] ??
                          ListtaskItemModel();
                  return ListtaskItemWidget(
                    model,
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildYesterdaySection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_yesterday".tr,
                  style: CustomTextStyles.bodySmallInterPrimaryContainer,
                )
              ],
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: Divider(),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReceivedSection(BuildContext context) {
    return Expanded(
      child: BlocSelector<NotifcationBloc, NotifcationState, NotifcationModel?>(
        selector: (state) => state.notifcationModelObj,
        builder: (context, notifcationModelObj) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 6.0.h),
                child: Divider(
                  height: 1.h,
                  thickness: 1.h,
                  color: appTheme.gray40004,
                ),
              );
            },
            itemCount: notifcationModelObj?.receivedsectionItemList.length ?? 0,
            itemBuilder: (context, index) {
              ReceivedsectionItemModel model =
                  notifcationModelObj?.receivedsectionItemList[index] ??
                      ReceivedsectionItemModel();
              return ReceivedsectionItemWidget(
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
