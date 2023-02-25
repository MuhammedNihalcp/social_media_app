import 'package:flutter/material.dart';
import 'package:social_media_app/core/const_color.dart';
import 'package:social_media_app/core/const_style.dart';

class ScreenSignUP extends StatelessWidget {
  const ScreenSignUP({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: authbackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: heigth * 0.1,
            ),
            const Text(
              'Sign Up',
              style: authTextStyle,
            ),
            
          ],
        ),
      ),
    );
  }
}
