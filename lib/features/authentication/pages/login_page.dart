import 'package:erp/core/common/widgets/custom_buttons.dart';
import 'package:erp/core/common/widgets/custom_snackbar.dart';
import 'package:erp/core/common/widgets/custom_text_field.dart';
import 'package:erp/core/theme/app_colors.dart';
import 'package:erp/features/authentication/bloc/authentication_bloc.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccessState) {
          CustomSnackbar.snackbarShow(context, state.message);
          Navigator.pushNamed(context, "/homepage");
        }
        if (state is AuthFailureState) {
          CustomSnackbar.snackbarShow(context, state.message);
        }
      },
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 10),
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
              controller: _emailController,
              hint: "Email",
              prefixIcon: Icons.email,
            ),
            CustomTextField(
              isPasswordField: true,
              isObscure: true,
              controller: _passwordController,
              hint: "Password",
              prefixIcon: Icons.lock,
            ),
            Align(
              alignment: Alignment(0.8, 0),
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/forgotpass'),
                child: Text(
                  "Forgort Password",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return Buttons(
                  isLoading: state is AuthLoadingState,
                  text: "Login",
                  onpressed: () {
                    BlocProvider.of<AuthBloc>(context).add(
                      LoginEvent(
                        email: _emailController.text,
                        password: _passwordController.text,
                      ),
                    );
                  },
                );
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
                              () =>
                                  Navigator.pushNamed(context, '/registerpage'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
