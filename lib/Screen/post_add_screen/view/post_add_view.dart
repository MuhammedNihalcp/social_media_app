import 'package:flutter/material.dart';
import 'package:social_media_app/core/const_color.dart';

class ScreenPostAdd extends StatelessWidget {
  const ScreenPostAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: authbackgroundColor,
      body: SafeArea(
          child: Center(
        child: Text('Screen Post Add'),
      )),
    );
  }
}
