import 'package:flutter/material.dart';
import 'package:yatla/pages/favourites_page.dart';
import 'package:yatla/pages/history_page.dart';
import 'package:yatla/pages/map_page.dart';
import 'package:yatla/pages/notifications_page.dart';
import 'package:yatla/pages/profile_page.dart';
import 'package:yatla/pages/settings_page.dart';
import '../pages/home_page.dart';
import '../pages/loading_page.dart';
import '../pages/login_page.dart';
import '../pages/register_page.dart';

class RouteManager {
  static const String loadingPage = '/';
  static const String loginPage = '/loginPage';
  static const String registerPage = 'registerPage';
  static const String homePage = 'homePage';
  static const String profilePage = 'profilePage';
  static const String favouritesPage = 'favouritesPage';
  static const String notificationsPage = 'notificationsPage';
  static const String historyPage = 'historyPage';
  static const String mapPage = 'mapPage';
  static const String settingsPage = 'settingsPage';

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loadingPage:
        return MaterialPageRoute(
          builder: (context) => const LoadingPage(),
        );

      case loginPage:
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );

      case registerPage:
        return MaterialPageRoute(
          builder: (context) => const RegisterPage(),
        );
      
      case homePage:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
      
      case profilePage:
        return MaterialPageRoute(
          builder: (context) => const ProfilePage(),
        );
      
      case favouritesPage:
        return MaterialPageRoute(
          builder: (context) => const FavouritesPage(),
        );
      
      case notificationsPage:
        return MaterialPageRoute(
          builder: (context) => const NotificationsPage(),
        );
      
      case historyPage:
        return MaterialPageRoute(
          builder: (context) => const HistoryPage(),
        );
      
      case mapPage:
        return MaterialPageRoute(
          builder: (context) => const MapPage(),
        );
      case settingsPage:
        return MaterialPageRoute(
          builder: (context) => const SettingsPage(),
        );


      default:
        throw Exception('No route found');
    }
  }
}
