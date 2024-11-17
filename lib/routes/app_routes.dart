import 'package:fixpoint/presentation/employeedashboard/controller/employee_dashboard_controller.dart';
import 'package:fixpoint/presentation/ownerdashboard_page/controllers/ownerdashboard_controller.dart';
import 'package:get/get.dart';
import '../screens.dart';

class AppRoutes {
  // Authentication Routes
  static const String landingScreen = '/landing_screen';
  static const String loginChoiceScreen = '/login_choice_screen';
  static const String loginPageScreen = '/login_page_screen';

  // Dashboard Routes
  static const String EmployeeDashboardPage = '/employee_dashboard';
  static const String OwnerDashboardPage = '/owner_dashboard';

  // Notification Routes
  static const String NotificationScreen = '/notification_screen';
  static const String NotificationOneScreen = '/notification_one_screen';
  static const String OwnerNotificationScreen = '/owner_notification_screen';

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

  // Chat Assistant Routes
  static const String chatAssistantSendDocumentScreen = '/chat_assistant_send_document_screen';

  // Navigation and Initial Route
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String initialRoute = '/landing_screen';

  static const String sidemenuScreen = '/sidemenu_screen';
  static const String outletScreen = '/outlet_screen';
  static const String workassignScreen = '/workassign_screen';
  static const String ownerbillpaymentScreen = '/owner_bill_payment_screen';
  static const String ownerwishlistScreen = '/owner_wishlist_screen';

  // List of routes with their respective pages and bindings
  static List<GetPage> get pages => [
    // Authentication Routes
    GetPage(
      name: landingScreen,
      page: () => LandingScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => LandingController());
      }),
    ),
    GetPage(
      name: loginChoiceScreen,
      page: () => LoginchoiceScreen(),
      binding: BindingsBuilder(() => Get.put(LoginchoiceController())),
    ),
    GetPage(
      name: loginPageScreen,
      page: () => LoginpageScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => LoginController());
      }),
    ),
    
    // Dashboard Routes
    GetPage(
      name: EmployeeDashboardPage,
      page: () => employeeDashboardPage(),
      binding: BindingsBuilder(() => Get.put(EmployeeDashboardController())),
    ),
    GetPage(
      name: OwnerDashboardPage,
      page: () => OwnerdashboardPage(),
      binding: BindingsBuilder(() => Get.put(OwnerdashboardController())),
    ),

    // Notification Routes
    GetPage(
      name: NotificationScreen,
      page: () => NotifcationScreen(),
    ),
    GetPage(
      name: NotificationOneScreen,
      page: () => NotifcationOneScreen(),
    ),
    GetPage(
      name: OwnerNotificationScreen,
      page: () => OwnernotificationScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => EmployeeDashboardController());
        Get.lazyPut(() => OwnerdashboardController());
      }),
    ),

    // Profile and Settings Routes
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
    ),
    GetPage(
      name: generalSettingScreen,
      page: () => GeneralSettingScreen(),
    ),

    // Management and Reports Routes
    GetPage(
      name: managementScreen,
      page: () => ManagementScreen(),
    ),
    GetPage(
      name: employeeRankScreen,
      page: () => EmployeeRankScreen(),
    ),
    GetPage(
      name: overallReportScreen,
      page: () => OverallReportScreen(),
    ),

    // Additional Routes
    GetPage(
      name: scheduleScreen,
      page: () => ScheduleScreen(),
    ),
    GetPage(
      name: payScreen,
      page: () => PayScreen(),
    ),
    GetPage(
      name: washingScreen,
      page: () => WashingScreen(),
    ),
    GetPage(
      name: transactionScreen,
      page: () => TransactionScreen(),
    ),
    GetPage(
      name: sidemenuScreen,
      page: () => SidemenuScreen(),
    ),
    // Add more routes here as needed...
  ];
}
