import 'package:erp/features/authentication/pages/login_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case "/login":
        return MaterialPageRoute(builder: (context) => LoginPage());
    }
  }
}
