import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:social_media_app/Screen/auth/forget_password/controller/forgot_password_controller.dart';
import 'package:social_media_app/Screen/auth/forget_password/view/widget/forgot_screens_head_text.dart';
import 'package:social_media_app/Screen/auth/verification_screen/view/otp_view.dart';
import 'package:social_media_app/core/const_color.dart';
import 'package:social_media_app/core/const_style.dart';
import 'package:social_media_app/util/TextFormFieldWidget/text_form_field_widget.dart';
import 'package:social_media_app/util/auth_head_text/auth_head_text.dart';

class ScreenForgotPassword extends StatelessWidget {
  ScreenForgotPassword({super.key, required this.width, required this.height});
  final double width;
  final double height;

  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: authbackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Consumer<ForgotController>(
              builder: (context, value, child) => Form(
                key: formkey,
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.1,
                    ),
                    const AuthHeadText(
                      text: 'Forgot Password',
                    ),
                    SizedBox(
                      height: height * 0.1,
                    ),
                    const ForgotScreensHeadText(
                      text: 'Mail Address Here',
                    ),
                    kheight20,
                    const Text(
                      'Enter user email address associated with your account.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: colorWhith,
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                      ),
                    ),
                    kheight20,
                    TextFormFieldWidget(
                      labelText: 'Email',
                      keyboardType: TextInputType.emailAddress,
                      controller: value.emailcontroller,
                      validator: (email) {
                        return value.emailValdation(email);
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
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          log('otp enabled');
                        }
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                OtpScreen(width: width, height: height),
                          ),
                        );
                      },
                      child: const Text(
                        'Recover Password',
                        style: authButtonTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
