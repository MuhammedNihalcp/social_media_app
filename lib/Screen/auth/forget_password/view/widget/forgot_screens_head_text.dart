import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media_app/core/const_color.dart';

class ForgotScreensHeadText extends StatelessWidget {
  const ForgotScreensHeadText({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.notoSans(
        textStyle: const TextStyle(
          color: colorWhith,
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ),
    );
  }
}
