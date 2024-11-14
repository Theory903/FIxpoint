import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/ownerdashboard_bloc.dart';
import 'models/ownerdashboard_model.dart';
import 'owner_bill_payment_screen.dart';

class OwnerdashboardPage extends StatefulWidget {
  const OwnerdashboardPage({Key? key})
      : super(
          key: key,
        );

  @override
  OwnerdashboardPageState createState() => OwnerdashboardPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<OwnerdashboardBloc>(
      create: (context) => OwnerdashboardBloc(OwnerdashboardState(
        ownerdashboardModelObj: OwnerdashboardModel(),
      ))
        ..add(OwnerdashboardInitialEvent()),
      child: OwnerdashboardPage(),
    );
  }
}
class OwnerdashboardPageState extends State<OwnerdashboardPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  int tabIndex = 0;

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
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 22.h),
              _buildDateColumn(context),
              SizedBox(height: 24.h),
              _buildTabview(context),
              Expanded(
                child: Container(
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      ScrollviewTabPage.builder(context),
                      ScrollviewTabPage.builder(context),
                      ScrollviewTabPage.builder(context)
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
      height: 54.h,
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgContentLeftAlignment,
        margin: EdgeInsets.only(left: 24.h),
        onTap: () {
          onTapContentleftone(context);
        },
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_wasing_bay".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgGroup238,
          height: 18.h,
          width: 16.h,
          margin: EdgeInsets.only(right: 27.h),
          onTap: () {
           NavigatorService.pushNamed(AppRoutes.notificationOneScreen);
          },
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildDateColumn(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_sun_29_nov".tr,
            style: CustomTextStyles.titleSmallGray70002_1,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18.h),
      width: double.maxFinite,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.onErrorContainer,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelColor: theme.colorScheme.onErrorContainer,
        unselectedLabelStyle: TextStyle(
          fontSize: 13.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        tabs: [
          Tab(
            height: 30,
            child: Container(
              alignment: Alignment.center,
              width: double.maxFinite,
              margin: EdgeInsets.only(right: 6.h),
              decoration: tabIndex == 0
                  ? BoxDecoration(
                      color: appTheme.gray90001,
                      borderRadius: BorderRadius.circular(
                        8.h,
                      ))
                  : BoxDecoration(
                      color: appTheme.gray30004,
                      borderRadius: BorderRadius.circular(
                        8.h,
                      ),
                    ),
              child: Text(
                "lbl_today".tr,
              ),
            ),
          ),
          Tab(
            height: 30,
            child: Container(
              alignment: Alignment.center,
              width: double.maxFinite,
              margin: EdgeInsets.symmetric(horizontal: 6.h),
              decoration: tabIndex == 1
                  ? BoxDecoration(
                      color: appTheme.gray90001,
                      borderRadius: BorderRadius.circular(
                        8.h,
                      ))
                  : BoxDecoration(
                      color: appTheme.gray30004,
                      borderRadius: BorderRadius.circular(
                        8.h,
                      ),
                    ),
              child: Text(
                "lbl_week".tr,
              ),
            ),
          ),
          Tab(
            height: 30,
            child: Container(
              alignment: Alignment.center,
              width: double.maxFinite,
              margin: EdgeInsets.only(left: 6.h),
              decoration: tabIndex == 2
                  ? BoxDecoration(
                      color: appTheme.gray90001,
                      borderRadius: BorderRadius.circular(
                        8.h,
                      ))
                  : BoxDecoration(
                      color: appTheme.gray30004,
                      borderRadius: BorderRadius.circular(
                        8.h,
                      ),
                    ),
              child: Text(
                "lbl_month".tr,
              ),
            ),
          )
        ],
        indicatorColor: Colors.transparent,
        onTap: (index) {
          tabIndex = index;
          setState(() {});
        },
      ),
    );
  }

  /// Navigates to the sidemenuScreen when the action is triggered.
  onTapContentleftone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.sidemenuScreen,
    );
  }
}
