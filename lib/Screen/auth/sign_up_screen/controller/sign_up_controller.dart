import 'dart:developer';

import 'package:email_auth/email_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:social_media_app/Screen/auth/sign_up_screen/model/sign_up_model.dart';
import 'package:social_media_app/core/const_color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignUPController extends ChangeNotifier {
  TextEditingController firstnamecontroller = TextEditingController();
  TextEditingController lastnamecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController conformpasswordcontroller = TextEditingController();

  bool agree = false;
  bool isLoading = false;
  final auth = FirebaseAuth.instance;

  void addUser(BuildContext ctx) async {
    UserCredential authResult;
    isLoading = true;
    notifyListeners();
    SignUpModel model = SignUpModel(
      firstname: firstnamecontroller.text.trim(),
      lastname: lastnamecontroller.text.trim(),
      email: emailcontroller.text.trim(),
      password: passwordcontroller.text.trim(),
    );
    try {
      authResult = await auth.createUserWithEmailAndPassword(
        email: model.email,
        password: model.password,
      );
      await FirebaseFirestore.instance
          .collection('users')
          .doc(authResult.user!.uid)
          .set({
        'firstname': model.firstname,
        'lastname': model.lastname,
        'email': model.email,
        'password': model.password,
      });
      disposetext();
      isLoading = false;
      notifyListeners();
    } on PlatformException catch (error) {
      ScaffoldMessenger.of(ctx).showSnackBar(
        SnackBar(
          backgroundColor: colorWhith,
          content: Text(
            error.toString(),
          ),
        ),
      );
      isLoading = false;
      notifyListeners();
    } catch (error) {
      log(error.toString(), name: 'signuperror');
      ScaffoldMessenger.of(ctx).showSnackBar(
        SnackBar(
          backgroundColor: colorRed,
          content: Text(
            error.toString(),
          ),
        ),
      );
      isLoading = false;
      notifyListeners();
    }
  }

  void otpSend() async {
    isLoading = true;
    notifyListeners();
    EmailAuth emailAuth = EmailAuth(sessionName: "Test session");
    //  emailAuth.config("server":"","serverKey":"",);
    var res = await emailAuth.sendOtp(
      recipientMail: emailcontroller.text,
      otpLength: 4,
    );
    if (res) {
      log('otp send');
    } else {
      log('otp not send');
    }
    isLoading = false;
    notifyListeners();
  }

  void onChanged(bool? value) {
    agree = value ?? false;
    notifyListeners();
  }

  void disposetext() {
    firstnamecontroller.clear();
    lastnamecontroller.clear();
    emailcontroller.clear();
    passwordcontroller.clear();
    conformpasswordcontroller.clear();
  }

  String? usernameValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter the username';
    } else if (value.length < 2) {
      return 'Too short username';
    } else {
      return null;
    }
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

  String? confirmpasswordValdation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please confirm your password';
    } else if (value.length < 8) {
      return 'Password must have atleast 8 character';
    } else if (value != passwordcontroller.text) {
      return 'Password does not match';
    } else {
      return null;
    }
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
