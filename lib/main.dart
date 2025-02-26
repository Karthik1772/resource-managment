import 'package:erp/core/routes/generated_routes.dart';
import 'package:erp/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final hivePath = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(hivePath.path);
  final box = await Hive.openBox("authtoken");
  final authToken = box.get("token");
  await box.close();

  runApp(MyApp(authToken: authToken));
}

class MyApp extends StatelessWidget {
  final String? authToken;
  const MyApp({super.key, required this.authToken});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.lightTheme,
      onGenerateRoute: Routes.onGenerate,
      initialRoute: "/splash", 
    );
  }
}
