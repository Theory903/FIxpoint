import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../ownerdashboard_page/ownerdashboard_page.dart';
import 'bloc/management_bloc.dart';
import 'iphone_13_mini_four_initial_page.dart';
import 'models/management_model.dart';


class ManagementScreen extends StatelessWidget {
  ManagementScreen({Key? key})
      : super(
          key: key,
        );

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<ManagementBloc>(
      create: (context) => ManagementBloc(ManagementState(
        managementModelObj: ManagementModel(),
      ))
        ..add(ManagementInitialEvent()),
      child: ManagementScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10002,
        body: Navigator(
          key: navigatorKey,
          initialRoute: AppRoutes.appNavigationScreen,
          onGenerateRoute: (routeSetting) => PageRouteBuilder(
            pageBuilder: (ctx, ani, ani1) =>
                getCurrentPage(context, routeSetting.name!),
            transitionDuration: Duration(seconds: 0),
          ),
        ),
        bottomNavigationBar: SizedBox(
          width: double.maxFinite,
          child: _buildBottomNavigationBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomNavigationBar(BuildContext context) {
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
        return AppRoutes.managementScreen;
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.scheduleScreen:
        return Iphone13MiniFourInitialPage.builder(context);
      case AppRoutes.ownerDashboardPage:
        return OwnerdashboardPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
