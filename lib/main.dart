import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';
import 'package:fixpoint/core/app_export.dart';
// Correct import path

final GlobalKey<ScaffoldMessengerState> globalMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // Initialize shared preferences
  await PrefUtils().init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return GetMaterialApp(
          title: 'Fixpoint',
          theme: theme, // Your theme setup
          debugShowCheckedModeBanner: false,
          scaffoldMessengerKey: globalMessengerKey, // Global messenger key
          translations: AppLocalization(), // Directly use AppLocalization
          locale: Locale('en', ''), // Set the default locale
          fallbackLocale: Locale('en', ''), // Fallback locale
          supportedLocales: [
            Locale('en', ''),
            // Add other supported locales like 'es', 'fr', etc.
          ],
          initialRoute: AppRoutes.initialRoute,
          getPages: AppRoutes.pages, // GetX routing
        );
      },
    );
  }
}
