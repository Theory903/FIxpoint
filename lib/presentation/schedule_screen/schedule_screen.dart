import 'package:flutter/material.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import 'bloc/schedule_bloc.dart';
import 'iphone13mini_tab_page.dart';
import 'models/schedule_model.dart';
import 'package:fixpoint/core/app_export.dart';
class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ScheduleScreenState createState() => ScheduleScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ScheduleBloc>(
      create: (context) => ScheduleBloc(ScheduleState(
        scheduleModelObj: ScheduleModel(),
      ))
        ..add(ScheduleInitialEvent()),
      child: ScheduleScreen(),
    );
  }
}

class ScheduleScreenState extends State<ScheduleScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10002,
        body: Container(
          height: 688.h,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: _buildAppBar(context),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgEllipse6Onerrorcontainer,
                height: 240.h,
                width: 172.h,
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(top: 10.h),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgEllipse6Onerrorcontainer,
                height: 240.h,
                width: 172.h,
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(top: 10.h),
              ),
              _buildTabview(context),
              Container(
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    Iphone13miniTabPage.builder(context),
                    Iphone13miniTabPage.builder(context),
                    Iphone13miniTabPage.builder(context)
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: SizedBox(
          width: double.maxFinite,
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppBar(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: CustomAppBar(
        height: 26.h,
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
          imagePath: ImageConstant.imgContentLeftAlignment,
          margin: EdgeInsets.only(left: 24.h),
        ),
        centerTitle: true,
        title: AppbarSubtitleOne(
          text: "lbl_schedule".tr,
        ),
        actions: [
          AppbarTrailingImage(
            imagePath: ImageConstant.imgGroup238,
            height: 18.h,
            width: 16.h,
            margin: EdgeInsets.only(right: 27.h),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 60.h),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.green600,
        labelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.gray50002,
        unselectedLabelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w400,
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: appTheme.green600,
              width: 1.h,
            ),
          ),
        ),
        dividerHeight: 0.0,
        tabs: [
          Tab(
            height: 36,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.h),
              child: Text(
                "lbl_today3".tr,
              ),
            ),
          ),
          Tab(
            height: 36,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.h),
              child: Text(
                "lbl_up_comming".tr,
              ),
            ),
          ),
          Tab(
            height: 36,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.h),
              child: Text(
                "lbl_done".tr,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
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
        return AppRoutes.ownerDashboardPage;
      case BottomBarEnum.Manage:
        return AppRoutes.managementScreen;
      case BottomBarEnum.Schedule:
        return AppRoutes.scheduleScreen;
      case BottomBarEnum.Review:
        return AppRoutes.ownerDashboardPage;
      default:
        return "/";
    }
  }
}
