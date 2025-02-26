import 'package:erp/core/common/widgets/custom_buttons.dart';
import 'package:erp/core/common/widgets/custom_text_field.dart';
import 'package:erp/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.white),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Find your account",
                    style: GoogleFonts.varelaRound(
                      color: AppColors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Enter your email address",
                    style: GoogleFonts.varelaRound(
                      color: AppColors.darkGrey,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          CustomTextField(
            controller: _emailController,
            hint: "Email",
            prefixIcon: Icons.email,
          ),
          SizedBox(height: 20),
          CustomTextField(
            controller: _otpController,
            hint: "OTP",
            prefixIcon: Icons.password,
          ),
          SizedBox(height: 20),
          Buttons(
            text: "Verify",
            onpressed: () {
              Navigator.pushNamed(context, '/newpass');
            },
          ),
        ],
      ),
    );
  }
}
