import 'package:flutter/material.dart';
import '../screens/ProfilePage.dart';
import '../screens/SettingPage.dart';
import '../home/HomePage.dart'; // Assuming you have HomePage already created

class Routes {
  static const String home = '/';
  static const String profile = '/profile';
  static const String settings = '/settings';
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case Routes.profile:
        return MaterialPageRoute(builder: (_) => const ProfilePage());
      case Routes.settings:
        return MaterialPageRoute(builder: (_) => const SettingsPage());
      default:
        // Fallback if no route is found
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('Page not found'),
            ),
          ),
        );
    }
  }
}
