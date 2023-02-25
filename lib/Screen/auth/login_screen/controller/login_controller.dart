import 'package:flutter/material.dart';
import 'package:social_media_app/core/const_color.dart';

class LoginController extends ChangeNotifier {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  bool agree = false;

  void onChanged(bool? value) {
    agree = value ?? false;
    notifyListeners();
  }

  String? emailValdation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    } else if (!RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(value)) {
      return 'Invalid email , please enter correct email';
    } else {
      return null;
    }
  }

  String? passwordValdation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    } else if (value.length < 8) {
      return 'Password must have atleast 8 character';
    } else if (value.length > 10) {
      return 'Password exceeds 8 character';
    }
    return null;
  }

  bool obscureText = true;
  Icon icon = const Icon(
    Icons.visibility_off,
    color: colorWhith,
  );

  void visibility() {
    if (obscureText == false) {
      icon = const Icon(
        Icons.visibility_off,
        color: colorWhith,
      );
      obscureText = true;
      notifyListeners();
    } else {
      icon = const Icon(
        Icons.visibility,
        color: colorWhith,
      );
      obscureText = false;
      notifyListeners();
    }
  }
}
