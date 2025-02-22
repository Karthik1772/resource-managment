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
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _usnController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmpasswordController = TextEditingController();
  final TextEditingController _branchController = TextEditingController();
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
              // SizedBox(height: 50),
              Text(
                "Register",
                style: GoogleFonts.varelaRound(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CustomTextField(
                controller: _firstNameController,
                hint: "First Name",
                prefixIcon: Icons.abc,
              ),
              // SizedBox(height: 30),
              CustomTextField(
                controller: _lastNameController,
                hint: "Last Name",
                prefixIcon: Icons.abc,
              ),
              // SizedBox(height: 30),
              CustomTextField(
                controller: _usnController,
                hint: "USN",
                prefixIcon: Icons.person,
              ),
              // SizedBox(height: 30),
              CustomTextField(
                controller: _emailController,
                hint: "Branch",
                prefixIcon: Icons.account_balance_sharp,
              ),
              // SizedBox(height: 30),
              CustomTextField(
                controller: _passwordController,
                hint: "Email",
                prefixIcon: Icons.email,
              ),
              // SizedBox(height: 30),
              CustomTextField(
                controller: _confirmpasswordController,
                hint: "Password",
                prefixIcon: Icons.password,
              ),
              // SizedBox(height: 30),
              CustomTextField(
                controller: _branchController,
                hint: "Confirm Password",
                prefixIcon: Icons.password,
              ),
              // SizedBox(height: 30),
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
