import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:social_media_app/core/const_color.dart';

class ScreenReels extends StatelessWidget {
  const ScreenReels({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: authbackgroundColor,
      body: SafeArea(
          child: Center(
        child: Text('Screen Reels'),
      )),
    );
  }
}
