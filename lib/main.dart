import 'package:erp/core/routes/generated_routes.dart';
import 'package:erp/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes.onGenerate,
      initialRoute: "/login",
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.lightTheme,
    );
  }
}
