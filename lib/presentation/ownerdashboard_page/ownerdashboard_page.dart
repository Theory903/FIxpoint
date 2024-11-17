import 'package:fixpoint/presentation/ownerdashboard_page/scrollview_tab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'controllers/ownerdashboard_controller.dart';
import 'controllers/scrollview_tab_controller.dart'; // Import the ScrollviewTabController

class OwnerdashboardPage extends StatefulWidget {
  const OwnerdashboardPage({Key? key}) : super(key: key);

  @override
  _OwnerdashboardPageState createState() => _OwnerdashboardPageState();
}

class _OwnerdashboardPageState extends State<OwnerdashboardPage>
    with TickerProviderStateMixin {
  late OwnerdashboardController controller;
  late TabController tabController;
  final ScrollviewTabController scrollviewTabController =
      Get.put(ScrollviewTabController(), permanent: true);

  @override
  void initState() {
    super.initState();
    controller = Get.put(OwnerdashboardController());
    tabController = TabController(length: 3, vsync: this);

    tabController.addListener(() {
      controller.tabIndex.value = tabController.index;
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    // The scrollviewTabController is permanent and should not be disposed here
    super.dispose();
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
            children: [
              SizedBox(height: 22.h),
              _buildDateColumn(context),
              SizedBox(height: 24.h),
              _buildTabview(context),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    ScrollviewTabPage(),
                    ScrollviewTabPage(),
                    ScrollviewTabPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget for AppBar
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
            Get.toNamed(AppRoutes.OwnerNotificationScreen);
          },
        )
      ],
    );
  }

  /// Section Widget for Date
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

  /// Section Widget for TabBar replacement
  Widget _buildTabview(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18.h),
      child: Row(
        children: [
          // Today Tab
          Expanded(
            child: Obx(() => GestureDetector(
                  onTap: () {
                    controller.tabIndex.value = 0;
                    tabController.animateTo(0);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 40.h,
                    margin: EdgeInsets.only(right: 6.h),
                    decoration: BoxDecoration(
                      color: controller.tabIndex.value == 0
                          ? appTheme.gray90001
                          : appTheme.gray30004,
                      borderRadius: BorderRadius.circular(8.h),
                    ),
                    child: Text(
                      "lbl_today".tr,
                      style: TextStyle(
                        color: controller.tabIndex.value == 0
                            ? Colors.white
                            : Colors.black,
                        fontSize: 14.fSize,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )),
          ),
          // Week Tab
          Expanded(
            child: Obx(() => GestureDetector(
                  onTap: () {
                    controller.tabIndex.value = 1;
                    tabController.animateTo(1);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 40.h,
                    margin: EdgeInsets.symmetric(horizontal: 6.h),
                    decoration: BoxDecoration(
                      color: controller.tabIndex.value == 1
                          ? appTheme.gray90001
                          : appTheme.gray30004,
                      borderRadius: BorderRadius.circular(8.h),
                    ),
                    child: Text(
                      "lbl_week".tr,
                      style: TextStyle(
                        color: controller.tabIndex.value == 1
                            ? Colors.white
                            : Colors.black,
                        fontSize: 14.fSize,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )),
          ),
          // Month Tab
          Expanded(
            child: Obx(() => GestureDetector(
                  onTap: () {
                    controller.tabIndex.value = 2;
                    tabController.animateTo(2);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 40.h,
                    margin: EdgeInsets.only(left: 6.h),
                    decoration: BoxDecoration(
                      color: controller.tabIndex.value == 2
                          ? appTheme.gray90001
                          : appTheme.gray30004,
                      borderRadius: BorderRadius.circular(8.h),
                    ),
                    child: Text(
                      "lbl_month".tr,
                      style: TextStyle(
                        color: controller.tabIndex.value == 2
                            ? Colors.white
                            : Colors.black,
                        fontSize: 14.fSize,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }

  /// Navigates to the sidemenuScreen when the action is triggered.
  void onTapContentleftone(BuildContext context) {
    // Add your navigation logic here
    Get.toNamed(AppRoutes.sidemenuScreen);
  }
}
