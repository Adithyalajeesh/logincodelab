import 'package:flutter/material.dart';
import '../presentation/splash_final_screen/splash_final_screen.dart';
import '../presentation/login_final_screen/login_final_screen.dart';
import '../presentation/image_upload_screen/image_upload_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashFinalScreen = '/splash_final_screen';

  static const String loginFinalScreen = '/login_final_screen';

  static const String imageUploadScreen = '/image_upload_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashFinalScreen: (context) => SplashFinalScreen(),
    loginFinalScreen: (context) => LoginFinalScreen(),
    imageUploadScreen: (context) => ImageUploadScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
