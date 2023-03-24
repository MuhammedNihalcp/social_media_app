import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:social_media_app/core/const_color.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: authbackgroundColor,
      body: SafeArea(child: Center(child: Text('Search Screen'),)),
    );
  }
}