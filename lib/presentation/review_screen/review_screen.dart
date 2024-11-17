import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import 'bloc/review_bloc.dart';
import 'iphone13mini_tab1_page.dart';
import 'models/review_model.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ReviewScreenState createState() => ReviewScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ReviewBloc>(
      create: (context) => ReviewBloc(ReviewState(
        reviewModelObj: ReviewModel(),
      ))
        ..add(ReviewInitialEvent()),
      child: ReviewScreen(),
    );
  }
}

class ReviewScreenState extends State<ReviewScreen>
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
    return BlocBuilder<ReviewBloc, ReviewState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray10002,
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(height: 6.h),
                  _buildSettingsSection(context),
                  SizedBox(height: 6.h),
                  SizedBox(
                    width: double.maxFinite,
                    child: Divider(
                      color: appTheme.blueGray10005,
                    ),
                  ),
                  _buildLineSection(context),
                  Expanded(
                    child: Container(
                      child: TabBarView(
                        controller: tabviewController,
                        children: [
                          Iphone13miniTab1Page.builder(context),
                          Iphone13miniTab1Page.builder(context),
                          Iphone13miniTab1Page.builder(context)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            bottomNavigationBar: SizedBox(
              width: double.maxFinite,
              child: _buildBottomNavigation(context),
            ),
          ),
        );
      },
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
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_review".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgGroup238,
          height: 18.h,
          width: 16.h,
          margin: EdgeInsets.only(right: 27.h),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildSettingsSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 26.h,
        right: 32.h,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 150.h,
            width: 152.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 22.h),
                    child: SizedBox(
                      height: 30.h,
                      width: 52.h,
                      child: CircularProgressIndicator(
                        value: 0.5,
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgSettings,
                  height: 52.h,
                  width: 32.h,
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 22.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgSettings,
                  height: 52.h,
                  width: 32.h,
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(bottom: 22.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgSettingsBlueGray10003,
                  height: 30.h,
                  width: 54.h,
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(left: 22.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgUserBlueGray10003,
                  height: 30.h,
                  width: 54.h,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(right: 22.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgContrast,
                  height: 52.h,
                  width: 32.h,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(bottom: 22.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgContrast,
                  height: 52.h,
                  width: 32.h,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(top: 22.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgUserPrimary,
                  height: 30.h,
                  width: 54.h,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(right: 22.h),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "lbl_4_2_5".tr,
                        style: theme.textTheme.displaySmall,
                      ),
                      Text(
                        "lbl_rating".tr.toUpperCase(),
                        style: CustomTextStyles
                            .labelMediumIBMPlexSansBluegray90005,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 22.h),
          SizedBox(
            width: double.maxFinite,
            child: TabBar(
              controller: tabviewController,
              labelPadding: EdgeInsets.zero,
              labelColor: theme.colorScheme.primary,
              unselectedLabelColor: appTheme.blueGray10005,
              tabs: [
                Tab(
                  child: Text(
                    "lbl_feedback".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_loream".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_loream".tr,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLineSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 26.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 74.h,
            child: Divider(
              color: appTheme.black900,
            ),
          )
        ],
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
}
