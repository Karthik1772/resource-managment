import 'package:erp/core/common/widgets/custom_buttons.dart';
import 'package:erp/core/common/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  final TextEditingController _NameController = TextEditingController();
  final TextEditingController _usnController = TextEditingController();
  final TextEditingController _branchController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _cpasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Register",
                style: GoogleFonts.varelaRound(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CustomTextField(
                controller: _NameController,
                hint: "Name",
                prefixIcon: Icons.abc,
              ),
              CustomTextField(
                controller: _usnController,
                hint: "USN",
                prefixIcon: Icons.person,
              ),
              CustomTextField(
                controller: _branchController,
                hint: "Branch",
                prefixIcon: Icons.account_balance_sharp,
              ),
              CustomTextField(
                controller: _emailController,
                hint: "Email",
                prefixIcon: Icons.email,
              ),
              CustomTextField(
                controller: _phController,
                hint: "Phone Number",
                prefixIcon: Icons.phone,
              ),
              CustomTextField(
                isPasswordField: true,
                isObscure: true,
                controller: _passwordController,
                hint: "Password",
                prefixIcon: Icons.password,
              ),
              CustomTextField(
                isPasswordField: true,
                isObscure: true,
                controller: _cpasswordController,
                hint: "Confirm Password",
                prefixIcon: Icons.password,
              ),
              Buttons(
                font: "Register",
                onpressed: () {
                  Navigator.pushNamed(context, '/homepage');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
