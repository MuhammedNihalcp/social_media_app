import 'package:flutter/material.dart';
import 'package:social_media_app/core/const_style.dart';

class AuthHeadText extends StatelessWidget {
  const AuthHeadText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: authTextStyle,
        ),
      ],
    );
  }
}
