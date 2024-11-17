import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import 'bloc/workassign_bloc.dart';
import 'models/contactlist_item_model.dart';
import 'models/workassign_model.dart';
import 'widgets/contactlist_item_widget.dart';


class WorkassignScreen extends StatelessWidget {
  WorkassignScreen({Key? key})
      : super(
          key: key,
        );

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<WorkassignBloc>(
      create: (context) => WorkassignBloc(WorkassignState(
        workassignModelObj: WorkassignModel(),
      ))
        ..add(WorkassignInitialEvent()),
      child: WorkassignScreen(),
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
            left: 26.h,
            top: 56.h,
            right: 26.h,
          ),
          decoration: BoxDecoration(
            color: theme.colorScheme.onErrorContainer,
            borderRadius: BorderRadiusStyle.roundedBorder40,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [_buildContactList(context)],
          ),
        ),
        bottomNavigationBar: SizedBox(
          width: double.maxFinite,
          child: _buildBottomNavigation(context),
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
        text: "lbl_assign".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildContactList(BuildContext context) {
    return Expanded(
      child: BlocSelector<WorkassignBloc, WorkassignState, WorkassignModel?>(
        selector: (state) => state.workassignModelObj,
        builder: (context, workassignModelObj) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 7.0.h),
                child: Divider(
                  height: 1.h,
                  thickness: 1.h,
                  color: appTheme.gray70002.withOpacity(0.1),
                ),
              );
            },
            itemCount: workassignModelObj?.contactlistItemList.length ?? 0,
            itemBuilder: (context, index) {
              ContactlistItemModel model =
                  workassignModelObj?.contactlistItemList[index] ??
                      ContactlistItemModel();
              return ContactlistItemWidget(
                model,
                onTapRowrajusharma: () {
                  onTapRowrajusharma(context);
                },
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomNavigation(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomBar(
        onChanged: (BottomBarEnum type) {
          Navigator.pushNamed(
              navigatorKey.currentContext!, getCurrentRoute(type));
        },
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.OwnerDashboardPage;
      case BottomBarEnum.Manage:
        return AppRoutes.managementScreen;
      case BottomBarEnum.Schedule:
        return AppRoutes.scheduleScreen;
      case BottomBarEnum.Review:
        return AppRoutes.OwnerDashboardPage;
      default:
        return "/";
    }
  }

  /// Navigates to the previous screen.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapRowrajusharma(BuildContext context) {}
}
