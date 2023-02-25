import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_media_app/Screen/auth/sign_up_screen/controller/sign_up_controller.dart';
import 'package:social_media_app/core/const_color.dart';
import 'package:social_media_app/core/const_style.dart';
import 'package:social_media_app/util/TextFormFieldWidget/text_form_field_widget.dart';

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
                    children: const [
                      Text(
                        'Sign Up',
                        style: authTextStyle,
                      ),
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
                    validator: (password) {
                      return value.passwordValdation(password);
                    },
                  ),
                  kheight20,
                  TextFormFieldWidget(
                    labelText: 'Conform Password',
                    keyboardType: TextInputType.name,
                    controller: value.conformpasswordcontroller,
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
                        value.agree ? log('pressed') : log('illa');
                      }
                    },
                    child: const Text(
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
                        text: const TextSpan(
                          text: 'Already have an account?',
                          style: TextStyle(
                              color: colorWhith,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Sign in',
                              style: TextStyle(
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
