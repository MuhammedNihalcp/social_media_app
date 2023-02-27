import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_media_app/Screen/auth/forget_password/view/widget/forgot_screens_head_text.dart';
import 'package:social_media_app/Screen/auth/new_password/controller/new_password_controller.dart';
import 'package:social_media_app/core/const_color.dart';
import 'package:social_media_app/core/const_style.dart';
import 'package:social_media_app/util/TextFormFieldWidget/text_form_field_widget.dart';
import 'package:social_media_app/util/auth_head_text/auth_head_text.dart';

class ScreenNewPassword extends StatelessWidget {
  ScreenNewPassword({
    super.key,
    required this.width,
    required this.height,
  });
  double width;
  double height;

  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: authbackgroundColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Consumer<NewPasswordController>(
            builder: (context, value, child) => Form(
              key: formkey,
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.1,
                  ),
                  const AuthHeadText(text: 'Reset Password'),
                  SizedBox(
                    height: height * 0.1,
                  ),
                  const ForgotScreensHeadText(text: '  Enter New Password'),
                  kheight20,
                  const Text(
                    'Your new password must be different from prviously used password',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: colorWhith,
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                    ),
                  ),
                  kheight20,
                  TextFormFieldWidget(
                    labelText: 'New Password',
                    keyboardType: TextInputType.name,
                    controller: value.newpasswordcontroller,
                    obscureText: value.obscureText,
                    onPressed: () {
                      value.visibility();
                    },
                    icon: value.icon,
                    validator: (newpassword) {
                      return value.passwordValdation(newpassword);
                    },
                  ),
                  kheight20,
                  TextFormFieldWidget(
                    labelText: 'Conform Password',
                    keyboardType: TextInputType.name,
                    controller: value.conformpasswordcontroller,
                    obscureText: value.obscureText,
                    validator: (conformpassword) {
                      return value.confirmpasswordValdation(conformpassword);
                    },
                  ),
                  kheight20,
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(authbuttoncolor),
                      fixedSize: MaterialStateProperty.all(
                        Size(width * 0.8, height * 0.08),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        log('add new password');
                      }
                    },
                    child: const Text(
                      'Continue',
                      style: authButtonTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
