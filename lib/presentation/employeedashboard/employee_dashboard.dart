import 'package:flutter/material.dart';
// Ensure this import for BlocProvider

import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_image_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import 'bloc/iphone_13_mini_twentyfive_bloc.dart';
import 'models/iphone_13_mini_twentyfive_model.dart';
import '../../core/app_export.dart'; // Ensure this import for AppRoutes

class EmployeeDashboardPage extends StatefulWidget {
  const EmployeeDashboardPage({Key? key}) : super(key: key);

  // Static builder method for BlocProvider wrapping
  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone13MiniTwentyfiveBloc>(
      create: (context) => Iphone13MiniTwentyfiveBloc(Iphone13MiniTwentyfiveState(
        iphone13MiniTwentyfiveModelObj: Iphone13MiniTwentyfiveModel(),
      ))..add(Iphone13MiniTwentyfiveInitialEvent()),
      child: const EmployeeDashboardPage(),
    );
  }

  @override
  EmployeeDashboardPageState createState() => EmployeeDashboardPageState();
}

class EmployeeDashboardPageState extends State<EmployeeDashboardPage> with TickerProviderStateMixin {
  late TabController tabController;
  int tabIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Column(
          children: [
            _buildTabBar(context),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  _buildTabContent(),
                  _buildTabContent(),
                  _buildTabContent(),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: CustomBottomBar(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 54.0,  // Assuming 54.h should be a constant for height
      centerTitle: true,
      title: AppbarTitle(text: "Employee Dashboard"),
      actions: [
        AppbarTrailingImageOne(
          imagePath: 'assets/images/imgNotification.png',
          onTap: () => Navigator.pushNamed(context, AppRoutes.notificationScreen),
        ),
      ],
    );
  }

  Widget _buildTabBar(BuildContext context) {
    return TabBar(
      controller: tabController,
      onTap: (index) {
        setState(() => tabIndex = index);
      },
      tabs: const [
        Tab(text: "Today"),
        Tab(text: "Week"),
        Tab(text: "Month"),
      ],
    );
  }

  Widget _buildTabContent() {
    return const Center(
      child: Text("Tab Content Here"),
    );
  }
}
