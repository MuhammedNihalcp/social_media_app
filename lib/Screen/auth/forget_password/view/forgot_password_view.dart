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
        child: Column(
          children: [
            SizedBox(
              height: height * 0.1,
            ),
            const AuthHeadText(
              text: 'Forgot Password',
            ),
          ],
        ),
      ),
    );
  }
}
