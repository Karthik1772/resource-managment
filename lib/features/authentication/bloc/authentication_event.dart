part of 'authentication_bloc.dart';

@immutable
sealed class AuthEvent {}

final class AuthLoginEvent extends AuthEvent {
  final String email;
  final String password;
  AuthLoginEvent({required this.email, required this.password});
}

final class AuthRegisterEvent extends AuthEvent {
  final String name;
  final String usn;
  final String branch;
  final String email;
  final String number;
  final String password;
  AuthRegisterEvent({
    required this.name,
    required this.usn,
    required this.branch,
    required this.email,
    required this.number,
    required this.password,
  });
}
