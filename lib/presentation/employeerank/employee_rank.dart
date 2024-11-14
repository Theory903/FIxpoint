import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/iphone_13_mini_thirtysix_bloc.dart';
import 'models/iphone_13_mini_thirtysix_model.dart';
import 'scrollview_tab2_page.dart';

class EmployeeRankScreen extends StatefulWidget {
  const EmployeeRankScreen({Key? key})
      : super(
          key: key,
        );

  @override
  EmployeeRankScreenState createState() => EmployeeRankScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone13MiniThirtysixBloc>(
      create: (context) => Iphone13MiniThirtysixBloc(Iphone13MiniThirtysixState(
        iphone13MiniThirtysixModelObj: Iphone13MiniThirtysixModel(),
      ))
        ..add(Iphone13MiniThirtysixInitialEvent()),
      child: EmployeeRankScreen(),
    );
  }
}

class EmployeeRankScreenState extends State<EmployeeRankScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

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
              SizedBox(height: 12.h),
              _buildTimePeriodTabs(context),
              Expanded(
                child: Container(
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      ScrollviewTab2Page.builder(context),
                      ScrollviewTab2Page.builder(context),
                      ScrollviewTab2Page.builder(context)
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
      title: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "lbl_outlet2".tr,
              style: theme.textTheme.titleLarge,
            ),
            TextSpan(
              text: "lbl_12".tr,
              style: CustomTextStyles.titleSmallRobotoBold,
            )
          ],
        ),
        textAlign: TextAlign.left,
      ),
    );
  }

  /// Section Widget
  Widget _buildTimePeriodTabs(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 28.h),
      padding: EdgeInsets.symmetric(horizontal: 18.h),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: theme.colorScheme.onErrorContainer,
              borderRadius: BorderRadius.circular(
                20.h,
              ),
              boxShadow: [
                BoxShadow(
                  color: appTheme.black900.withOpacity(0.25),
                  spreadRadius: 2.h,
                  blurRadius: 2.h,
                  offset: Offset(
                    0,
                    4,
                  ),
                )
              ],
            ),
            width: double.maxFinite,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                20.h,
              ),
              child: TabBar(
                controller: tabviewController,
                labelPadding: EdgeInsets.zero,
                labelColor: theme.colorScheme.onSecondaryContainer,
                unselectedLabelColor: appTheme.gray70002,
                tabs: [
                  Tab(
                    child: Text(
                      "lbl_week".tr,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "lbl_month".tr,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "lbl_year".tr,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
