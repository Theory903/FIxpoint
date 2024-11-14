import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_rating_bar.dart';
import 'bloc/iphone_13_mini_nine_bloc.dart';
import 'models/iphone_13_mini_nine_model.dart';
import 'models/tasklist_item_model.dart';
import 'widgets/tasklist_item_widget.dart';

class employeeDashboardPage extends StatelessWidget {
  const employeeDashboardPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone13MiniNineBloc>(
      create: (context) => Iphone13MiniNineBloc(Iphone13MiniNineState(
        iphone13MiniNineModelObj: Iphone13MiniNineModel(),
      ))
        ..add(Iphone13MiniNineInitialEvent()),
      child: employeeDashboardPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10002,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildProfileStack(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.only(
                      left: 28.h,
                      top: 22.h,
                      right: 28.h,
                    ),
                    child: Column(
                      children: [
                        CustomElevatedButton(
                          height: 52.h,
                          text: "lbl_assign_task".tr,
                          buttonStyle: CustomButtonStyles.outlineBlack,
                          buttonTextStyle: CustomTextStyles.titleSmallPrimary_1,
                          onPressed: () {
                            onTapAssigntask(context);
                          },
                        ),
                        SizedBox(height: 16.h),
                        _buildTaskList(context),
                        SizedBox(height: 22.h)
                      ],
                    ),
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
  Widget _buildProfileStack(BuildContext context) {
    return SizedBox(
      height: 304.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 8.h),
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadiusStyle.roundedBorder24,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomAppBar(
                    height: 40.h,
                    leadingWidth: 64.h,
                    leading: AppbarLeadingIconbutton(
                      imagePath: ImageConstant.imgArrowLeftOnerrorcontainer,
                      margin: EdgeInsets.only(left: 24.h),
                      onTap: () {
                        onTapArrowleftone(context);
                      },
                    ),
                    centerTitle: true,
                    title: AppbarTitle(
                      text: "lbl_profile".tr,
                    ),
                  )
                ],
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 28.h),
                width: double.maxFinite,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(
                          horizontal: 48.h,
                          vertical: 16.h,
                        ),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.onErrorContainer,
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                          border: Border.all(
                            color: appTheme.gray20002,
                            width: 1.h,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 54.h),
                            Text(
                              "lbl_rajesh_sharma".tr,
                              style: CustomTextStyles.titleSmallPrimary_1,
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              "lbl_mechanic".tr,
                              style: theme.textTheme.labelLarge,
                            ),
                            SizedBox(height: 2.h),
                            CustomRatingBar(
                              initialRating: 5,
                            ),
                            SizedBox(height: 14.h),
                            SizedBox(
                              width: double.maxFinite,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: CustomOutlinedButton(
                                      text: "lbl_call".tr,
                                      leftIcon: Container(
                                        margin: EdgeInsets.only(right: 12.h),
                                        child: CustomImageView(
                                          imagePath: ImageConstant.imgCall,
                                          height: 18.h,
                                          width: 16.h,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 30.h),
                                  Expanded(
                                    child: CustomElevatedButton(
                                      height: 30.h,
                                      text: "lbl_info".tr,
                                      buttonStyle:
                                          CustomButtonStyles.fillPrimaryTL8,
                                      buttonTextStyle: CustomTextStyles
                                          .titleSmallOnErrorContainer_1,
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
              )
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse7,
            height: 120.h,
            width: 122.h,
            radius: BorderRadius.circular(
              60.h,
            ),
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 64.h),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTaskList(BuildContext context) {
    return BlocSelector<Iphone13MiniNineBloc, Iphone13MiniNineState,
        Iphone13MiniNineModel?>(
      selector: (state) => state.iphone13MiniNineModelObj,
      builder: (context, iphone13MiniNineModelObj) {
        return ListView.separated(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 16.h,
            );
          },
          itemCount: iphone13MiniNineModelObj?.tasklistItemList.length ?? 0,
          itemBuilder: (context, index) {
            TasklistItemModel model =
                iphone13MiniNineModelObj?.tasklistItemList[index] ??
                    TasklistItemModel();
            return TasklistItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapAssigntask(BuildContext context) {}
}
