import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/profile_bloc.dart';
import 'models/profile_model.dart';
import 'models/profilelist_item_model.dart';
import 'widgets/profilelist_item_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) => ProfileBloc(ProfileState(
        profileModelObj: ProfileModel(),
      ))
        ..add(ProfileInitialEvent()),
      child: ProfileScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 24.h),
              Expanded(
                child: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 100.h,
                          width: 102.h,
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onErrorContainer,
                            borderRadius: BorderRadiusStyle.roundedBorder50,
                            boxShadow: [
                              BoxShadow(
                                color: appTheme.blueGray3001e,
                                spreadRadius: 2.h,
                                blurRadius: 2.h,
                                offset: Offset(
                                  5,
                                  15,
                                ),
                              )
                            ],
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgEllipse775100x98,
                                height: 100.h,
                                width: 98.h,
                                radius: BorderRadius.circular(
                                  48.h,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Padding(
                        padding: EdgeInsets.only(left: 86.h),
                        child: Text(
                          "lbl_rajesh_singh".tr,
                          style: CustomTextStyles.titleLargeIndigo90001,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Padding(
                        padding: EdgeInsets.only(left: 122.h),
                        child: Text(
                          "lbl_incharge".tr,
                          style: CustomTextStyles.bodySmallRobotoGray60002,
                        ),
                      ),
                      SizedBox(height: 30.h),
                      _buildProfileList(context)
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
      title: Column(
        children: [
          AppbarSubtitleOne(
            text: "lbl_profile".tr,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 4.h,
              width: 4.h,
              margin: EdgeInsets.only(
                left: 18.h,
                right: 40.h,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  2.h,
                ),
                border: Border.all(
                  color: appTheme.gray200.withOpacity(0.5),
                  width: 1.h,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileList(BuildContext context) {
    return Expanded(
      child: BlocSelector<ProfileBloc, ProfileState, ProfileModel?>(
        selector: (state) => state.profileModelObj,
        builder: (context, profileModelObj) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0.h),
                child: Divider(
                  height: 1.h,
                  thickness: 1.h,
                  color: appTheme.gray100,
                ),
              );
            },
            itemCount: profileModelObj?.profilelistItemList.length ?? 0,
            itemBuilder: (context, index) {
              ProfilelistItemModel model =
                  profileModelObj?.profilelistItemList[index] ??
                      ProfilelistItemModel();
              return ProfilelistItemWidget(
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
