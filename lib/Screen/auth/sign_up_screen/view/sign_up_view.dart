import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_media_app/Screen/auth/login_screen/view/login_view.dart';
import 'package:social_media_app/Screen/auth/sign_up_screen/controller/sign_up_controller.dart';
import 'package:social_media_app/Screen/auth/verification_screen/view/otp_view.dart';
import 'package:social_media_app/Screen/home/view/home_view.dart';
import 'package:social_media_app/core/const_color.dart';
import 'package:social_media_app/core/const_style.dart';
import 'package:social_media_app/util/TextFormFieldWidget/text_form_field_widget.dart';
import 'package:social_media_app/util/auth_head_text/auth_head_text.dart';
import 'package:social_media_app/util/circular_indicator_widget/circular_indicator_widget.dart';

class ScreenSignUP extends StatelessWidget {
  ScreenSignUP({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: authbackgroundColor,
      body: SafeArea(
        child: Consumer<SignUPController>(
          builder: (context, value, child) => Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: formKey,
              child: ListView(
                children: [
                  SizedBox(
                    height: height * 0.1,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: colorWhith,
                        ),
                      ),
                      kwidth15,
                      const AuthHeadText(text: 'Sign Up'),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.1,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: width * 0.44,
                        child: TextFormFieldWidget(
                          controller: value.firstnamecontroller,
                          validator: (name) {
                            return value.usernameValidation(name);
                          },
                          labelText: 'Fast Name',
                          keyboardType: TextInputType.name,
                        ),
                      ),
                      kwidth15,
                      SizedBox(
                        width: width * 0.44,
                        child: TextFormFieldWidget(
                          controller: value.lastnamecontroller,
                          validator: (name) {
                            return value.usernameValidation(name);
                          },
                          labelText: 'Last Name',
                          keyboardType: TextInputType.name,
                        ),
                      ),
                    ],
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
                  TextFormFieldWidget(
                    labelText: 'Password',
                    keyboardType: TextInputType.name,
                    controller: value.passwordcontroller,
                    obscureText: value.obscureText,
                    onPressed: () {
                      value.visibility();
                    },
                    icon: value.icon,
                    validator: (password) {
                      return value.passwordValdation(password);
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Material(
                        color: authbackgroundColor,
                        child: Checkbox(
                          checkColor: authbuttoncolor,
                          fillColor: MaterialStateProperty.all(colorWhith),
                          value: value.agree,
                          onChanged: (values) {
                            value.onChanged(values);
                          },
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          text: 'I have Agree with ',
                          style: TextStyle(
                              color: colorWhith,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'privacy',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: authbuttoncolor,
                              ),
                            ),
                            TextSpan(text: ' and '),
                            TextSpan(
                              text: 'policy',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: authbuttoncolor,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
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
                      if (formKey.currentState!.validate()) {
                        value.agree
                            ? value.addUser(context)
                            : ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  backgroundColor: colorRed,
                                  content: Text(
                                    'Please Agree Privacy and Policy',
                                  ),
                                ),
                              );
                      }
                    },
                    child: value.isLoading == true
                        ? const CircularIndicatorWidget()
                        : const Text(
                            'Sign Up',
                            style: authButtonTextStyle,
                          ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Already have an account?',
                          style: const TextStyle(
                              color: colorWhith,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                          children: <TextSpan>[
                            TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => ScreenLogin(),
                                      ),
                                    ),
                              text: '   Sign in',
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                color: authbuttoncolor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
