import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_media_app/Screen/splash_screen/controller/splash_controller.dart';

import 'package:social_media_app/core/const_color.dart';
import 'package:social_media_app/core/const_style.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    Provider.of<SplashController>(context, listen: false).splashTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: authbackgroundColor,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              width: width * 0.2,
              image: const AssetImage('assets/images/app_icon.png'),
            ),
            kheight10,
            Text(
              'Talky',
              style: apptittlestyle,
            )
          ],
        ),
      )),
    );
  }
}
