// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
enum AuthenticationState { checking, failure, success, normal }

class AuthProvider extends ChangeNotifier {
  // AuthRepo authRepo;
  // AuthProvider(this.authRepo);
  AuthenticationState authenticationState = AuthenticationState.normal;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String otp = '';
  void signup() async {
    otp = "123";
    notifyListeners();
  }

}
