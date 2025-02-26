import 'package:flutter/material.dart';
import 'package:erp/core/theme/app_colors.dart';

class SplashScreen extends StatefulWidget {
  final String? authToken;
  const SplashScreen({super.key, required this.authToken});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Delay for 1.5 seconds, then navigate to login or homepage
    Future.delayed(const Duration(milliseconds: 1500), () {
      Navigator.pushReplacementNamed(
        context,
        widget.authToken != null ? "/homepage" : "/login",
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Image.asset(
          'assets/logo.png',
          height: 200,
        ), // Ensure this file exists
      ),
    );
  }
}
