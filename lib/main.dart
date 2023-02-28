import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shopping_managment/screens/login_screen.dart';
import 'package:shopping_managment/screens/create_new_product_screen.dart';
import '../utilites/app_config.dart';
import '../utilites/app_functions.dart';
import '../utilites/app_theme.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (BuildContext context, Orientation orientation,
          ScreenType screenType) {
        return FutureBuilder<Color>(
            future: AppFunctions.getYourMaterialData(),
            builder: (_, snap) {
              return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  navigatorKey: navigatorKey,
                  title: AppConfig.appName,
                  theme: AppTheme.lightTheme(color: snap.data),
                  home: const LoginScreen() //const SplashScreen(),
                  );
            });
      },
    );
  }
}
