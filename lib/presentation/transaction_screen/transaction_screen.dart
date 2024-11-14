import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/transaction_bloc.dart';
import 'iphone3mini_tab2_page.dart';
import 'models/transaction_model.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({Key? key})
      : super(
          key: key,
        );

  @override
  TransactionScreenState createState() => TransactionScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<TransactionBloc>(
      create: (context) => TransactionBloc(TransactionState(
        transactionModelObj: TransactionModel(),
      ))
        ..add(TransactionInitialEvent()),
      child: TransactionScreen(),
    );
  }
}

class TransactionScreenState extends State<TransactionScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10002,
        appBar: _buildAppBar(context),
        body: Container(
          height: 712.h,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [_buildTotalSpendingSection(context)],
                  ),
                ),
              ),
              Container(
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    Container(),
                    Iphone3miniTab2Page.builder(context),
                    Iphone3miniTab2Page.builder(context),
                    Iphone3miniTab2Page.builder(context)
                  ],
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
      title: AppbarSubtitleOne(
        text: "lbl_transaction".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildTotalSpendingSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: EdgeInsets.only(top: 10.h),
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 38.h,
                    vertical: 24.h,
                  ),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.onErrorContainer,
                    borderRadius: BorderRadiusStyle.roundedBorder14,
                    border: Border.all(
                      color: appTheme.gray100,
                      width: 1.h,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "lbl_total_spending".tr,
                        style: CustomTextStyles.titleSmallRobotoGray60002,
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        "lbl_rs_9992".tr,
                        style: CustomTextStyles.headlineSmallRobotoPrimary,
                      ),
                      SizedBox(height: 24.h),
                      SizedBox(
                        width: double.maxFinite,
                        child: TabBar(
                          controller: tabviewController,
                          isScrollable: true,
                          tabAlignment: TabAlignment.start,
                          labelColor: theme.colorScheme.primary,
                          labelStyle: TextStyle(
                            fontSize: 14.fSize,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                          ),
                          unselectedLabelColor: appTheme.gray60002,
                          unselectedLabelStyle: TextStyle(
                            fontSize: 14.fSize,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                          ),
                          indicator: BoxDecoration(
                            color: appTheme.gray5001,
                            borderRadius: BorderRadius.circular(
                              8.h,
                            ),
                          ),
                          dividerHeight: 0.0,
                          tabs: [
                            Tab(
                              height: 32,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.h),
                                child: Text(
                                  "lbl_day".tr,
                                ),
                              ),
                            ),
                            Tab(
                              height: 32,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.h),
                                child: Text(
                                  "lbl_week".tr,
                                ),
                              ),
                            ),
                            Tab(
                              height: 32,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.h),
                                child: Text(
                                  "lbl_month".tr,
                                ),
                              ),
                            ),
                            Tab(
                              height: 32,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.h),
                                child: Text(
                                  "lbl_year".tr,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 198.h)
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

  /// Navigates to the previous screen.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
