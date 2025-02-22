import 'package:erp/features/authentication/pages/homepage.dart';
import 'package:erp/features/authentication/pages/login_page.dart';
import 'package:erp/features/authentication/pages/registerpage.dart';
import 'package:erp/features/authentication/pages/splash.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case "/login":
        return MaterialPageRoute(builder: (context) => LoginPage());
        case "/splash":
        return MaterialPageRoute(builder: (context) => Splash());
        case "/homepage":
        return MaterialPageRoute(builder: (context) => Homepage());
        case "/registerpage":
        return MaterialPageRoute(builder: (context) => Registerpage());
    }
  }
}
