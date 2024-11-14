import 'package:fixpoint/core/app_export.dart';
import 'package:fixpoint/presentation/outlet_screen/scrollview_tab1_page.dart';
import 'package:fixpoint/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:fixpoint/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'bloc/outlet_bloc.dart';
import 'models/outlet_model.dart';

class OutletScreen extends StatefulWidget {
  const OutletScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OutletBloc>(
      create: (context) =>
          OutletBloc(OutletState(outletModelObj: OutletModel()))
            ..add(OutletInitialEvent()),
      child: const OutletScreen(),
    );
  }

  @override
  State<OutletScreen> createState() => _OutletScreenState();
}

class _OutletScreenState extends State<OutletScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10002,
        appBar: _buildAppBar(context),
        body: Column(
          children: [
            const SizedBox(height: 16),
            _buildTimePeriodTabs(),
            const SizedBox(height: 16),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  ScrollviewTab1Page(),
                  ScrollviewTab1Page(),
                  ScrollviewTab1Page(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 64,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftBlack900,
        margin: const EdgeInsets.only(left: 24, top: 8, bottom: 8),
        onTap: () => _onTapArrowleftone(context),
      ),
      centerTitle: true,
      title: Text(
        "lbl_outlet2".tr,
        style: theme.textTheme.titleLarge,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: Text(
            "lbl_12".tr,
            style: CustomTextStyles.titleSmallRobotoBold,
          ),
        ),
      ],
    );
  }

  Widget _buildTimePeriodTabs() {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: TabBar(
          controller: _tabController,
          indicatorColor: theme.colorScheme.onSecondaryContainer,
          labelColor: theme.colorScheme.onSecondaryContainer,
          unselectedLabelColor: appTheme.gray70002,
          tabs: [
            Tab(child: Text("lbl_week".tr)),
            Tab(child: Text("lbl_month".tr)),
            Tab(child: Text("lbl_year".tr)),
          ],
        ),
      ),
    );
  }

  void _onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
