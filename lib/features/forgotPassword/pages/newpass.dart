import 'package:erp/core/common/widgets/custom_buttons.dart';
import 'package:erp/core/common/widgets/custom_text_field.dart';
import 'package:erp/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewPass extends StatefulWidget {
  const NewPass({super.key});

  @override
  State<NewPass> createState() => _NewPassState();
}

class _NewPassState extends State<NewPass> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _cpasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.white),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 20),
              Text(
                "Enter New Password",
                style: GoogleFonts.varelaRound(
                  fontSize: 15,
                  color: AppColors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          CustomTextField(
            controller: _passwordController,
            hint: "Enter New Password",
            prefixIcon: Icons.password,
          ),
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 20),
              Text(
                "Confirm New Password",
                style: GoogleFonts.varelaRound(
                  fontSize: 15,
                  color: AppColors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),

          CustomTextField(
            controller: _cpasswordController,
            hint: "Confirm New Password",
            prefixIcon: Icons.password,
          ),
          SizedBox(height: 20),
          Buttons(
            text: "Verify",
            onpressed: () {
              Navigator.pushNamed(context, "/homepage");
            },
          ),
        ],
      ),
    );
  }
}
