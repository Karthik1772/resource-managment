import 'package:erp/core/common/widgets/custom_buttons.dart';
import 'package:erp/core/common/widgets/custom_text_field.dart';
import 'package:erp/core/theme/app_colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Login",
            style: GoogleFonts.varelaRound(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: 200,
            height: 200,
            child: Image.asset("assets/logo.png"),
          ),
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
          Align(
            alignment: Alignment(0.8, 0),
            child: Text(
              "Forgot password",
              style: GoogleFonts.varelaRound(color: Colors.blue),
            ),
          ),
          Buttons(
            font: "Login",
            onpressed: () {
              Navigator.pushNamed(context, '/homepage');
            },
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "New User?",
                  style: GoogleFonts.varelaRound(color: AppColors.orange),
                ),
                TextSpan(
                  text: "\tRegister",
                  style: GoogleFonts.varelaRound(color: Colors.blue),
                  recognizer:
                      TapGestureRecognizer()
                        ..onTap =
                            () => Navigator.pushNamed(context, '/register'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
