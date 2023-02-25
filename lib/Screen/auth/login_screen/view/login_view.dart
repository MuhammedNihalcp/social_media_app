import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_media_app/Screen/auth/forget_password/view/forgot_password_view.dart';
import 'package:social_media_app/Screen/auth/login_screen/controller/login_controller.dart';
import 'package:social_media_app/Screen/auth/sign_up_screen/view/sign_up_view.dart';
import 'package:social_media_app/core/const_color.dart';
import 'package:social_media_app/core/const_style.dart';
import 'package:social_media_app/util/TextFormFieldWidget/text_form_field_widget.dart';
import 'package:social_media_app/util/auth_head_text/auth_head_text.dart';

class ScreenLogin extends StatelessWidget {
  ScreenLogin({super.key});
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: authbackgroundColor,
      body: SafeArea(
          child: Consumer<LoginController>(
        builder: (context, value, child) => SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.1,
                  ),
                  const AuthHeadText(
                    text: 'Login',
                  ),
                  SizedBox(
                    height: height * 0.1,
                  ),
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
                  Row(
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
                      const Text(
                        'Remember me',
                        style: TextStyle(
                          color: colorWhith,
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ScreenForgotPassword(),
                              ),
                            );
                          },
                          child: const Text(
                            'Forgot Password',
                            style: TextStyle(
                              color: authbuttoncolor,
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),
                          ),
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
                      'Login',
                      style: authButtonTextStyle,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.1,
                  ),
                  const Text(
                    'Or Sign in with ',
                    style: TextStyle(
                      color: colorWhith,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  kheight20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Image(
                          width: width * 0.3,
                          height: height * 0.1,
                          image:
                              const AssetImage('assets/images/google_logo.png'),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Image(
                          width: width * 0.3,
                          height: height * 0.075,
                          image: const AssetImage(
                              'assets/images/facebook_logo.png'),
                        ),
                      ),
                    ],
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Don't have an account?",
                      style: const TextStyle(
                          color: colorWhith,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => ScreenSignUP(),
                                  ),
                                ),
                          text: '   Sign Up',
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: authbuttoncolor,
                          ),
                        ),
                      ],
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
