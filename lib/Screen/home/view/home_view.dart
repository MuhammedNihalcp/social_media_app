import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_media_app/Screen/auth/sign_up_screen/controller/sign_up_controller.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<SignUPController>(
        builder: (context, value, child) => value.isEmailValidation == false
            ? SafeArea(
                child: Center(
                child: Text('Email Verification'),
              ))
            : SafeArea(
                child: Center(
                  child: Text('home page'),
                ),
              ),
      ),
    );
  }
}
