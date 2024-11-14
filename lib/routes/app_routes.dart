import 'package:fixpoint/presentation/landing_screen/models/landing_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../screens.dart';

class AppRoutes {
  // Authentication Routes
  static const String landingScreen = '/landing_screen';
  static const String loginChoiceScreen = '/login_choice_screen';
  static const String loginPageScreen = '/login_page_screen';

  // Dashboard Routes
  static const String employeeDashboardPage = '/employee_dashboard';
  static const String ownerDashboardPage = '/owner_dashboard';

  // Notification Routes
  static const String notificationScreen = '/notification_screen';
  static const String notificationOneScreen = '/notification_one_screen';
  static const String ownerNotificationScreen = '/owner_notification_screen';

  // Profile and Settings Routes
  static const String profileScreen = '/profile_screen';
  static const String generalSettingScreen = '/general_setting_screen';

  // Management and Reports Routes
  static const String managementScreen = '/management_screen';
  static const String employeeRankScreen = '/employee_rank_screen';
  static const String overallReportScreen = '/overall_report_screen';

  // Additional Routes
  static const String assignScreen = '/assign_screen';
  static const String scheduleScreen = '/schedule_screen';
  static const String payScreen = '/pay_screen';
  static const String washingScreen = '/washing_screen';
  static const String transactionScreen = '/transaction_screen';

  // Chat Assistant
  static const String chatAssistantSendDocumentScreen =
      '/chat_assistant_send_document_screen';

  // Navigation and Initial Route
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String initialRoute = '/landing_screen';

  static String sidemenuScreen = '/sidemenu_screen';
  static String outletScreen = '/outlet_screen';
  static String workassignScreen = '/workassign_screen';
  static String ownerbillpaymentScreen = '/owner_bill_payment_screen';
  static String ownerwishlistScreen = '/owner_wishlist_screen';

  // Map of routes to their respective builders
  static Map<String, WidgetBuilder> get routes => {
        landingScreen: (context) => BlocProvider(
              create: (context) => LandingBloc() // No need to pass LandingState directly
                ..add(LandingInitialEvent()),
              child: const LandingScreen(),
            ),
        loginChoiceScreen: (context) => const LoginchoiceScreen(),
        loginPageScreen: (context) => LoginpageScreen(),
        employeeDashboardPage: (context) => const EmployeeDashboardPage(),
        ownerDashboardPage: (context) => const OwnerdashboardPage(),
        notificationScreen: (context) => const NotifcationScreen(),
        notificationOneScreen: (context) => const NotifcationOneScreen(),
        ownerNotificationScreen: (context) => const OwnernotificationScreen(),
        profileScreen: (context) => const ProfileScreen(),
        generalSettingScreen: (context) => const GeneralSettingScreen(),
        managementScreen: (context) => ManagementScreen(),
        employeeRankScreen: (context) => const EmployeeRankScreen(),
        overallReportScreen: (context) => const OverallReportScreen(),
        scheduleScreen: (context) => const ScheduleScreen(),
        payScreen: (context) => const PayScreen(),
        washingScreen: (context) => const WashingScreen(),
        transactionScreen: (context) => const TransactionScreen(),
        chatAssistantSendDocumentScreen: (context) =>
            const ChatAsistantSendDocumentScreen(),
      };
}