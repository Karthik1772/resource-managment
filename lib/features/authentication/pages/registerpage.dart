import 'package:erp/core/common/widgets/custom_buttons.dart';
import 'package:erp/core/common/widgets/custom_snackbar.dart';
import 'package:erp/core/common/widgets/custom_text_field.dart';
import 'package:erp/features/authentication/bloc/authentication_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _usnController = TextEditingController();
  final TextEditingController _branchController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _cpasswordController = TextEditingController();
 
  @override
  void dispose() {
    _nameController.dispose();
    _usnController.dispose();
    _branchController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _passwordController.dispose();
    _cpasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccessState) {
          Navigator.pushReplacementNamed(context, "/homepage");
        }
        if (state is AuthFailureState) {
          CustomSnackbar.snackbarShow(context, state.message);
        }
      },
      child: Scaffold(
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
                  controller: _nameController,
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
                  controller: _phoneNumberController,
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
                BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                    return Buttons(
                      isLoading: state is AuthLoadingState,
                      text: "Register",
                      onpressed: () {
                        BlocProvider.of<AuthBloc>(context).add(
                          RegisterEvent(
                            name: _nameController.text,
                            usn: _usnController.text,
                            branch: _branchController.text,
                            email: _emailController.text,
                            phoneNumber: _phoneNumberController.text,
                            password: _passwordController.text,
                            cpassword: _cpasswordController.text,
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
