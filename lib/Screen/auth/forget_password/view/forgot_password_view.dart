import 'package:flutter/material.dart';
import 'package:social_media_app/core/const_color.dart';
import 'package:social_media_app/util/auth_head_text/auth_head_text.dart';

class ScreenForgotPassword extends StatelessWidget {
  const ScreenForgotPassword(
      {super.key, required this.width, required this.height});
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: authbackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
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
              const Text(
                'Mail Address Here',
                style: TextStyle(
                    color: colorWhith,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              )
            ],
          ),
        ),
      ),
    );
  }
}
