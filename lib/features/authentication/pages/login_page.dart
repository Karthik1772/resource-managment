import 'package:erp/core/common/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.assured_workload, size: 30),
        title: Text("Alvas"),
      ),
      body: Column(
        children: [
          CustomTextField(
            controller: TextEditingController(),
            hint: "Email",
            prefixIcon: Icons.email,
          ),
          CustomTextField(
            isPasswordField: true,
            isObscure: true,
            controller: TextEditingController(),
            hint: "Password",
            prefixIcon: Icons.lock,
          ),
        ],
      ),
    );
  }
}
