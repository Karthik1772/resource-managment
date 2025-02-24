import 'dart:convert';
import 'package:erp/core/constants/urls.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthLoginEvent>(_authLogin);
    on<AuthRegisterEvent>(_authRegister);
  }
}

Future<void> _authLogin(AuthLoginEvent event, Emitter<AuthState> emit) async {
  emit(AuthLoading());
  if (event.email.isEmpty || event.password.isEmpty) {
    emit(AuthFailure(message: "Enter Credentials in the Fields."));
    return;
  }

  final emailRegex = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );
  if (!emailRegex.hasMatch(event.email)) {
    emit(AuthFailure(message: "Enter a valid email address."));
    return;
  }

  if (event.password.length < 6) {
    emit(AuthFailure(message: "Password must be at least 6 characters long."));
    return;
  }

  final passwordRegex = RegExp(
    r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]+$',
  );
  if (!passwordRegex.hasMatch(event.password)) {
    emit(
      AuthFailure(
        message:
            "Password must contain at least 1 uppercase letter, 1 lowercase letter, 1 digit, and 1 special character.",
      ),
    );
    return;
  }

  final requestBody = jsonEncode({
    "user_email": event.email,
    "user_password": event.password,
  });

  try {
    final jsonResponse = await http.post(
      Uri.parse(AppUrls.login),
      body: requestBody,
      headers: {"Content-Type": "application/json"},
    );
    final response = jsonDecode(jsonResponse.body);
    if (jsonResponse.statusCode != 200) {
      emit(AuthFailure(message: response["message"]));
      return;
    }
    final box = await Hive.openBox("authtoken");
    box.put("token", response["token"]);
    box.close();
    emit(AuthSuccess(message: "Login Successful."));
  } catch (e) {
    emit(AuthFailure(message: "An Exception Occured."));
  }
}

Future<void> _authRegister(
  AuthRegisterEvent event,
  Emitter<AuthState> emit,
) async {
  emit(AuthLoading());
  if (event.usn.isEmpty ||
      event.branch.isEmpty ||
      event.email.isEmpty ||
      event.number.isEmpty ||
      event.password.isEmpty) {
    emit(AuthFailure(message: "Enter Credentials in the Fields."));
  }
  if (event.email.isEmpty || event.password.isEmpty) {
    emit(AuthFailure(message: "Enter Credentials in the Fields."));
    return;
  }

  final emailRegex = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );
  if (!emailRegex.hasMatch(event.email)) {
    emit(AuthFailure(message: "Enter a valid email address."));
    return;
  }

  if (event.password.length < 6) {
    emit(AuthFailure(message: "Password must be at least 6 characters long."));
    return;
  }

  final passwordRegex = RegExp(
    r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]+$',
  );
  if (!passwordRegex.hasMatch(event.password)) {
    emit(
      AuthFailure(
        message:
            "Password must contain at least 1 uppercase letter, 1 lowercase letter, 1 digit, and 1 special character.",
      ),
    );
    return;
  }
  final requestBody = jsonEncode({
    "student_name": event.name,
    "studdent_usn": event.usn,
    "student_branch": event.branch,
    "student_email": event.email,
    "student_number": event.number,
    "student_password": event.password,
  });
  try {
    final jsonResponse = await http.post(
      Uri.parse(AppUrls.register),
      body: requestBody,
      headers: {"Content-Type": "application/json"},
    );
    final response = jsonDecode(jsonResponse.body);
    if (jsonResponse.statusCode != 200) {
      emit(AuthFailure(message: response["message"]));
      return;
    }
    final box = await Hive.openBox("authtoken");
    box.put("token", response["token"]);
    box.close();
    emit(AuthSuccess(message: "Registration Successful."));
  } catch (e) {
    emit(AuthFailure(message: "An Exception Occured."));
  }
}
